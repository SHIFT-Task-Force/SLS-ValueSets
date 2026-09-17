# SHIFT FSH Generator

This repository contains `generate_fsh.py`, a script that reads the SHIFT terminology CSVs and writes a combined `Shift.fsh` file for the IG.

## What `generate_fsh.py` does

The script:

1. Reads all relevant August 2026 source CSVs from:
- `Hannah/ShiftBHValueSetsAug2026/`
- `Hannah/ShiftSUDValueSetsAug2026/`
- `Hannah/ShiftReproValueSetsAug2026/`

2. Builds one FSH `ValueSet` instance per unique `Shift Value Set` label found in those rows.

3. Reads the definition tables to drive narrative text:
- `Hannah/ShiftBHValueSetsAug2026/ShiftBHvaluesetdefinitionsaug2026.csv`
- `Hannah/ShiftSUDValueSetsAug2026/ShiftSUDvaluesetdefinitionsaug2026.csv`
- `Hannah/ShiftReproValueSetsAug2026/ShiftReprovaluesetdefinitionsaug2026.csv`

4. Normalizes terminology entries into grouped `compose.include` and `expansion.contains` sections using system URIs such as:
- HL7 ICD-9/ICD-10
- CPT
- HCPCS via `http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets`
- LOINC
- RXNORM
- SNOMED CT

5. Builds markdown `Description` text from the definition tables and appends a `useContext` paragraph:
- `Identified as: ...`

6. Handles `useContext` values from BH/SUD/Repro-prefixed source labels:
- Parses labels such as `SHIFT BH AGG`, `SHIFT SUD OPD`, and `SHIFT REPRO OTHER`
- Uses HL7 `v3-ActCode` when a clean mapping exists (for example `SHIFT BH SEX -> v3-ActCode#SEX`)
- Adds an inline comment showing the CSV-to-HL7 translation when mapped
- Defines a local `CodeSystem` called `ShiftCustomActSensitivityCodes` for values with no HL7 mapping, using prefixed custom codes such as `BHAGG`, `SUDOPD`, and `REPROOTHER`

7. Generates a bundle instance named `ShiftBHBundledTerminologyResources` that includes all generated CodeSystems and ValueSets.

8. Writes the output as UTF-8 without a BOM using the repository's existing LF line endings so Sushi can consume the FSH file correctly.

## Special handling for CSV artifacts

Some source CSVs contain leading apostrophes introduced by spreadsheet/text encoding. These apostrophes are formatting markers, not part of the terminology code or display:

- Code fields are normalized with the leading apostrophe removed before they are written as FSH codes. For example, CSV `'635.00` becomes FSH `#635.00`.
- A display value is omitted when it is only the corresponding code, including the encoded form such as `'11612-9`. Real descriptions are retained, including descriptions that legitimately contain apostrophes.
- Do not treat a leading apostrophe in a CSV code as a meaningful code character. The normalization is performed in `add_code()` and again at final FSH emission so generated output remains clean even when source columns have inconsistent encoding.

## Sensitivity mappings

The generator emits `ShiftSensitivityCodeMap` for the custom-to-HL7 mappings:

- `BHCORE` -> `v3-ActCode#BH`
- `BHSEX` -> `v3-ActCode#SEX`
- `SEX` -> `v3-ActCode#SEX`
- `SUD` -> `v3-ActCode#SUD`

Mapped source codes remain defined in `ShiftCustomActSensitivityCodes` for ConceptMap provenance, but are excluded from the local-code portion of `ShiftAllSensitivityCodes`. Their HL7 target codes are included from `v3-ActCode` instead.

## Output

- Output file: `input/fsh/valuesets/Shift.fsh`

Running the script overwrites `input/fsh/valuesets/Shift.fsh` with freshly generated content.

## Run

From repository root:

```powershell
python .\Hannah\generate_fsh.py
```

## Notes

- The terminology row scan filters helper/report/supplement artifacts such as `_build_report`, `valuesetcount`, `valuesetdefinitions`, `supplement`, cache files, and other non-source CSVs.
- Definition CSVs are loaded separately for ValueSet descriptions and local custom-code descriptions.
- Source CSV ordering and unique-code checks are used to keep generated content deterministic.
- The generator explicitly writes UTF-8 without a BOM and preserves the repository's LF line endings. BOM-prefixed `.fsh` files are not handled reliably by Sushi.
