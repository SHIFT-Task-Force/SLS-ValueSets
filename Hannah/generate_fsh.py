#!/usr/bin/env python3
"""
Generate FSH ValueSet definitions from ALL ShiftBH and ShiftSUD CSV files.
Creates ONE combined ValueSet for each unique "Shift Value Set" value,
combining data from all CSV files.
"""

import csv
from collections import defaultdict
from pathlib import Path
import glob
from datetime import datetime
import uuid

SCRIPT_DIR = Path(__file__).resolve().parent


# Codes available in HL7 ValueSet v3-InformationSensitivityPolicy
# (http://terminology.hl7.org/ValueSet/v3-InformationSensitivityPolicy).
INFORMATION_SENSITIVITY_POLICY_CODES = {
    "ADOL", "B", "BH", "CEL", "COGN", "DEMO", "DIA", "DOB", "DRGIS",
    "DVD", "EMOTDIS", "EMP", "EMPL", "ETH", "ETHUD", "GDIS", "GENDER",
    "HIV", "IDS", "LIVARG", "LOCIS", "MARST", "MH", "MST", "OPIOIDUD",
    "PATLOC", "PDS", "PHY", "PREGNANT", "PRS", "PSY", "PSYTHPN", "RACE",
    "REL", "SCA", "SDV", "SEX", "SICKLE", "SPI", "SSP", "STD", "SUD",
    "TBOO", "VIO", "VIP",
}

LOCAL_CONTEXT_CODESYSTEM_ID = "ShiftCustomActContextCodes"
LOCAL_CONTEXT_CODESYSTEM_URL = (
    "http://SHIFT-Task-Force.github.io/SLS-ValueSets/CodeSystem/"
    f"{LOCAL_CONTEXT_CODESYSTEM_ID}"
)

# List of all CSV files to process (relative to repository root)
csv_patterns = [
    "ShiftBHValueSetsMay2026/*may2026.csv",
    "ShiftSUDValueSetsMay2026/*may2026.csv",
]

definitions_csv_files = [
    "ShiftBHValueSetsMay2026/ShiftBHvaluesetdefinitionsmay2026.csv",
    "ShiftSUDValueSetsMay2026/ShiftSUDvaluesetdefinitionsmay2026.csv",
]


def fsh_escape(text):
    """Escape text for use in quoted FSH strings."""
    if text is None:
        return ""
    return str(text).replace("\\", "\\\\").replace('"', '\\"').replace("\n", " ").strip()


def normalize_ws(text):
    """Normalize whitespace for robust definition lookup."""
    return " ".join((text or "").split())


def parse_context_part(part):
    """Parse a Shift Value Set label part into prefixed code/display components."""
    part = normalize_ws(part)
    if not part:
        return None

    if part.startswith("SHIFT BH "):
        base = normalize_ws(part[len("SHIFT BH "):])
        return {
            "source_label": f"SHIFT BH {base}",
            "code": f"BH{base.replace(' ', '')}",
            "display": f"BH {base}",
            "base": base,
            "domain": "BH",
        }

    if part.startswith("SHIFT SUD "):
        base = normalize_ws(part[len("SHIFT SUD "):])
        return {
            "source_label": f"SHIFT SUD {base}",
            "code": f"SUD{base.replace(' ', '')}",
            "display": f"SUD {base}",
            "base": base,
            "domain": "SUD",
        }

    if part.startswith("SHIFT "):
        base = normalize_ws(part[len("SHIFT "):])
        return {
            "source_label": f"SHIFT {base}",
            "code": base.replace(" ", ""),
            "display": base,
            "base": base,
            "domain": None,
        }

    base = part
    return {
        "source_label": part,
        "code": base.replace(" ", ""),
        "display": base,
        "base": base,
        "domain": None,
    }


def hl7_policy_code_for_context(context_item):
    """Return HL7 InformationSensitivityPolicy code if this context maps to one."""
    candidate = context_item["base"].replace(" ", "")
    if candidate in INFORMATION_SENSITIVITY_POLICY_CODES:
        return candidate
    return None


def load_definitions_from_csv(csv_path):
    """Load label -> definition mappings from a definitions CSV."""
    mappings = {}

    path = Path(csv_path)
    if not path.is_absolute():
        path = SCRIPT_DIR / path
    if not path.exists():
        return mappings

    with open(path, "r", encoding="utf-8-sig", newline="") as f:
        rows = list(csv.reader(f))

    header_idx = None
    for i, row in enumerate(rows):
        lowered = [c.strip().lower() for c in row]
        if "definition" in lowered and ("label" in lowered or "term/value" in lowered):
            header_idx = i
            break

    if header_idx is None:
        return mappings

    headers = [c.strip() for c in rows[header_idx]]
    lowered_headers = [h.lower() for h in headers]
    label_col = lowered_headers.index("label") if "label" in lowered_headers else lowered_headers.index("term/value")
    definition_col = lowered_headers.index("definition")

    for row in rows[header_idx + 1:]:
        if len(row) <= max(label_col, definition_col):
            continue
        label = normalize_ws(row[label_col])
        definition = normalize_ws(row[definition_col])
        if label and definition and label not in mappings:
            mappings[label] = definition

    return mappings


def load_all_definitions():
    """Load and merge definitions from both BH and SUD definition tables."""
    merged = {}
    for csv_file in definitions_csv_files:
        for label, definition in load_definitions_from_csv(csv_file).items():
            if label not in merged:
                merged[label] = definition
    return merged


def context_code_definition(context_item, definitions):
    """Resolve a context code's definition from the definitions tables."""
    base = context_item["base"]
    source_label = context_item["source_label"]
    domain = context_item["domain"]

    candidates = [
        source_label,
        f"SHIFT BH {base}",
        f"SHIFT SUD {base}",
        f"SUD {base}",
        base,
    ]

    if domain == "BH":
        candidates.extend([f"BH {base}", f"BH{base}"])
    elif domain == "SUD":
        candidates.extend([f"SUD {base}", f"SUD{base}"])

    for candidate in candidates:
        definition = definitions.get(candidate)
        if definition:
            return definition
    return f"Local SHIFT context code {context_item['code']}"


def valueset_description(vs_name, definitions):
    """Build ValueSet description from definition-table rows for each context label."""
    parts = [normalize_ws(p) for p in vs_name.split(" | ")]
    resolved = [(part, definitions.get(part, "")) for part in parts]
    resolved = [(part, definition) for part, definition in resolved if definition]

    if not resolved:
        return f"ValueSet for {vs_name}"
    if len(resolved) == 1:
        return resolved[0][1]
    return "; ".join([f"{part}: {definition}" for part, definition in resolved])


def use_context_identifier(context_item):
    """Return a compact identifier string for the useContext value."""
    hl7_code = hl7_policy_code_for_context(context_item)
    if hl7_code:
        return f"v3-ActCode#{hl7_code}"
    return f"{LOCAL_CONTEXT_CODESYSTEM_ID}#{context_item['code']}"


def valueset_description_with_use_context(base_description, context_codes):
    """Append a markdown paragraph describing the useContext values."""
    if not context_codes:
        return base_description
    identifiers = [use_context_identifier(context_item) for context_item in context_codes]
    return f"{base_description}\n\nIdentified as: {', '.join(identifiers)}"


def get_all_csv_files():
    """Find all CSV files matching the patterns."""
    files = []
    for pattern in csv_patterns:
        matched = glob.glob(str(SCRIPT_DIR / pattern))
        files.extend([f for f in matched if not any(
            x in f for x in [
                "_new_additions", "valuesetcount", "valuesetdefinitions",
                "supplement", "_build_report", "_cache", "_aapc", "_rxnorm",
            ]
        )])
    return files


def process_all_csvs():
    """Process all CSV files and combine into single output."""
    csv_files = get_all_csv_files()
    definitions = load_all_definitions()

    if not csv_files:
        print("No CSV files found")
        return False

    print(f"Processing {len(csv_files)} CSV files")

    valuesets = defaultdict(list)

    # Read all CSV files
    for csv_file in sorted(csv_files):
        csv_path = Path(csv_file)

        if not csv_path.exists():
            print(f"File not found: {csv_file}")
            continue

        print(f"  Reading {csv_file}")

        with open(csv_path, "r", encoding="utf-8") as f:
            lines = f.readlines()

            # Check if first line is a comment (starts with #)
            start_idx = 0
            if lines and lines[0].startswith("#"):
                start_idx = 1

            reader = csv.DictReader(lines[start_idx:])

            for row in reader:
                vs_name = row.get("Shift Value Set", "").strip()
                if vs_name:
                    valuesets[vs_name].append(row)

    if not valuesets:
        print("No data found in any CSV files")
        return False

    output = []
    output.append("// Generated from all ShiftBH and ShiftSUD CSV files")
    output.append("// Combined ValueSets for SHIFT BH and SHIFT SUD\n")

    generated_codesystems = []
    generated_valuesets = []

    # Build context-code vocabulary once so we can define local codes for anything
    # not represented by the InformationSensitivityPolicy value set.
    all_context_items = {}
    for vs_name in valuesets.keys():
        for part in vs_name.split(" | "):
            context_item = parse_context_part(part)
            if context_item and context_item["code"]:
                all_context_items[context_item["code"]] = context_item

    custom_context_codes = sorted(
        code for code, context_item in all_context_items.items()
        if not hl7_policy_code_for_context(context_item)
    )
    if custom_context_codes:
        output.append(f"CodeSystem: {LOCAL_CONTEXT_CODESYSTEM_ID}")
        output.append('Title: "SHIFT Custom Context Codes"')
        output.append('Description: "Local useContext codes not present in v3-InformationSensitivityPolicy"')
        output.append("* ^experimental = false")
        output.append("* ^caseSensitive = true")
        for code in custom_context_codes:
            context_item = all_context_items[code]
            definition = context_code_definition(context_item, definitions)
            output.append(f'* #{code} "{fsh_escape(context_item["display"])}" "{fsh_escape(definition)}"')
        output.append("")
        generated_codesystems.append((LOCAL_CONTEXT_CODESYSTEM_ID, LOCAL_CONTEXT_CODESYSTEM_URL))

    generation_timestamp = datetime.now().astimezone().isoformat(timespec="seconds")

    for vs_name in sorted(valuesets.keys()):
        rows = valuesets[vs_name]

        codes_by_system = defaultdict(list)

        for row in rows:
            for col_name, system_uri in [
                ("ICD-9", "http://hl7.org/fhir/sid/icd-9-cm"),
                ("ICD-10", "http://hl7.org/fhir/sid/icd-10-cm"),
                ("CPT Code", "http://www.ama-assn.org/go/cpt"),
                ("HCPCS Code", "urn:oid:2.16.840.1.113883.6.285"),
                ("LOINC Code", "http://loinc.org"),
                ("RXNORM Code", "http://www.nlm.nih.gov/research/umls/rxnorm"),
                ("SNOMED Code", "http://snomed.info/sct"),
            ]:
                code = row.get(col_name, "").strip()
                if code and code not in [c["code"] for c in codes_by_system[system_uri]]:
                    display = row.get("DSM Disorder Description", row.get("Description", code)).strip()
                    codes_by_system[system_uri].append({"code": code, "display": display})

        # Skip creating ValueSets that have no codes across all systems.
        if not any(codes_by_system.values()):
            continue

        fsh_name = "ShiftBH" + vs_name.replace(" ", "").replace("|", "").replace(" | ", "_")
        fsh_name = fsh_name.replace("SHIFT ", "").replace("BH ", "").replace("SUD ", "")

        parts = vs_name.split(" | ")
        context_codes = []
        for part in parts:
            context_item = parse_context_part(part)
            if context_item and context_item["code"]:
                context_codes.append(context_item)

        url = f"http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/{fsh_name}"

        output.append(f"Instance: {fsh_name}")
        output.append("InstanceOf: ValueSet")
        output.append("Usage: #definition")
        output.append(f"Title: \"{fsh_escape(vs_name)}\"")
        full_description = valueset_description_with_use_context(
            valueset_description(vs_name, definitions),
            context_codes,
        )
        output.append('Description: """')
        output.append(full_description)
        output.append('"""')
        output.append(f"* name = \"{fsh_name}\"")
        output.append(f"* url = \"{url}\"")
        output.append("* status = #active")
        output.append("* experimental = false")
        output.append("* version = \"0.1.0\"")
        output.append("* date = \"2026-05-20\"")

        for context_item in context_codes:
            output.append("* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus")
            hl7_code = hl7_policy_code_for_context(context_item)
            if hl7_code:
                if context_item["source_label"] != hl7_code:
                    output.append(f"// useContext mapping: {context_item['source_label']} -> v3-ActCode#{hl7_code}")
                output.append(f"* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#{hl7_code}")
            else:
                output.append(
                    f"* useContext[=].valueCodeableConcept = "
                    f"{LOCAL_CONTEXT_CODESYSTEM_URL}#{context_item['code']}"
                )

        output.append("* compose.inactive = true")

        for system, codes in sorted(codes_by_system.items()):
            if codes:
                output.append(f"* compose.include[+].system = \"{system}\"")
                for code_dict in codes:
                    code_value = code_dict["code"].lstrip("'")
                    output.append(f"* compose.include[=].concept[+].code = #{code_value}")
                    if code_dict["display"] and code_dict["display"] != code_dict["code"]:
                        output.append(f"* compose.include[=].concept[=].display = \"{code_dict['display']}\"")

        output.append(f"* expansion.timestamp = \"{generation_timestamp}\"")
        output.append(f"* expansion.identifier = \"urn:uuid:{uuid.uuid4()}\"")
        for system, codes in sorted(codes_by_system.items()):
            if codes:
                for code_dict in codes:
                    code_value = code_dict["code"].lstrip("'")
                    output.append(f"* expansion.contains[+].system = \"{system}\"")
                    output.append(f"* expansion.contains[=].code = #{code_value}")
                    if code_dict["display"] and code_dict["display"] != code_dict["code"]:
                        output.append(f"* expansion.contains[=].display = \"{code_dict['display']}\"")

        output.append("")
        output.append("")
        generated_valuesets.append((fsh_name, url))

    output.append("Instance: ShiftBHBundledTerminologyResources")
    output.append("InstanceOf: Bundle")
    output.append("Usage: #example")
    output.append('Title: "Bundle - SHIFT Generated Terminology Resources"')
    output.append('Description: "Bundle containing generated SHIFT CodeSystems and ValueSets"')
    output.append("* type = #collection")

    for resource_name, resource_url in generated_codesystems + generated_valuesets:
        output.append(f"* entry[+].resource = {resource_name}")
        output.append(f"* entry[=].fullUrl = \"{resource_url}\"")

    repo_root = Path(__file__).resolve().parent.parent
    output_file = repo_root / "input" / "fsh" / "valuesets" / "Shift.fsh"
    output_file.parent.mkdir(parents=True, exist_ok=True)
    with open(output_file, "w", encoding="utf-8") as f:
        f.write("\n".join(output))

    print(f"\nGenerated {output_file.resolve()}")
    print(f"Created {len(generated_valuesets)} ValueSets combining all CSV data")
    return True


process_all_csvs()
