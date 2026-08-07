# SHIFT FSH Generator

This repository contains `generate_fsh.py`, a script that builds a combined `Shift.fsh` file from SHIFT BH and SHIFT SUD source tables.

## What `generate_fsh.py` does

The script:

1. Reads all relevant `*may2026.csv` terminology source files from:
- `ShiftBHValueSetsMay2026/`
- `ShiftSUDValueSetsMay2026/`

2. Builds one FSH `ValueSet` instance per unique `Shift Value Set` label found in those rows.

3. Reads definition tables to drive narrative text:
- `ShiftBHValueSetsMay2026/ShiftBHvaluesetdefinitionsmay2026.csv`
- `ShiftSUDValueSetsMay2026/ShiftSUDvaluesetdefinitionsmay2026.csv`

4. Writes terminology content for each generated ValueSet:
- `compose.include` entries grouped by code system
- `expansion.timestamp` (generation-time timestamp)
- `expansion.identifier` (new UUID per ValueSet)
- `expansion.contains` entries mirroring generated compose codes without populating display values

5. Builds markdown `Description` text from definition rows and appends a useContext paragraph:
- `Identified as: ...`

6. Handles `useContext` values using BH/SUD-prefixed source labels:
- Parses labels such as `SHIFT BH AGG` and `SHIFT SUD OPD`
- Uses HL7 `v3-ActCode` when a clean mapping exists (for example `SHIFT BH SEX -> v3-ActCode#SEX`)
- Adds an inline comment in the ValueSet showing CSV-to-HL7 translation when mapped
- Defines a local CodeSystem (`ShiftCustomActContextCodes`) for values with no HL7 mapping, using prefixed custom codes (for example `BHAGG`, `SUDOPD`) with display + definition

7. Generates a bundle instance (`ShiftBHBundledTerminologyResources`) that includes all generated CodeSystems and ValueSets in the file.

## Output

- Output file: `input/fsh/valuesets/Shift.fsh`

Running the script overwrites `input/fsh/valuesets/Shift.fsh` with freshly generated content.

## Run

From repository root:

```powershell
python .\Hannah\generate_fsh.py
```

## Notes

- The terminology row scan filters helper/report/supplement artifacts (for example `_build_report`, `valuesetcount`, `valuesetdefinitions`, `supplement`, cache files).
- Definition CSVs are still loaded separately for ValueSet and custom-code descriptions.
- Source CSV ordering and unique-code checks are used to keep generated content deterministic.
