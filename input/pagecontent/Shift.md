The [SHIFT GitHub](https://github.com/SHIFT-Task-Force) has:
- [SHIFT SLS ValueSets](https://github.com/SHIFT-Task-Force/SLS-ValueSets) (This publication source)
- [SHIFT SLS Reference Implementation](https://github.com/SHIFT-Task-Force/sls-ri)
- [SHIFT SLS Implementation Guide](https://github.com/SHIFT-Task-Force/sls-ri-ig) - Definition of the RI API, and profiling of ValueSet for Sensitive Topics.
- [SHIFT SLS Demo Data](https://github.com/SHIFT-Task-Force/sls-demo-data) - Use-cases that SHIFT is working on.

### SHIFT BH, SUD, and Repro Terminology Resources (August 2026)

The publication is generated from the August 2026 SHIFT BH, SHIFT SUD, and SHIFT Repro source CSV files and published for implementation and testing.

- [SHIFT Custom Context Codes (CodeSystem)](CodeSystem-ShiftCustomActContextCodes.html)
- [SHIFT All Context Codes (ValueSet)](ValueSet-ShiftAllContextCodes.html)

Current generated categories include:

Behavioral Health and Reproductive Health ValueSets:
- [SHIFT ABORTION](ValueSet-ShiftBHSHIFTABORTION.html)
- [SHIFT CONTRACEPTION](ValueSet-ShiftBHSHIFTCONTRACEPTION.html)
- [SHIFT FERTILITY](ValueSet-ShiftBHSHIFTFERTILITY.html)
- [SHIFT GAC](ValueSet-ShiftBHSHIFTGAC.html)
- [SHIFT PREG](ValueSet-ShiftBHSHIFTPREG.html)
- [SHIFT REPRO OTHER](ValueSet-ShiftBHSHIFTREPROOTHER.html)
- [SHIFT SEX](ValueSet-ShiftBHSHIFTSEX.html)
- [SHIFT STI](ValueSet-ShiftBHSHIFTSTI.html)
- [SHIFT BH AGG](ValueSet-ShiftBHSHIFTBHAGG.html)
- [SHIFT BH CORE](ValueSet-ShiftBHSHIFTBHCORE.html)
- [SHIFT BH DEV](ValueSet-ShiftBHSHIFTBHDEV.html)
- [SHIFT BH EAT](ValueSet-ShiftBHSHIFTBHEAT.html)
- [SHIFT BH NCD](ValueSet-ShiftBHSHIFTBHNCD.html)
- [SHIFT BH PERS](ValueSet-ShiftBHSHIFTBHPERS.html)
- [SHIFT BH SEX](ValueSet-ShiftBHSHIFTBHSEX.html)
- [SHIFT BH SOM](ValueSet-ShiftBHSHIFTBHSOM.html)

Substance Use Disorder ValueSets:
- [SHIFT SUD](ValueSet-ShiftBHSHIFTSUD.html)
- [SHIFT SUD AMPH](ValueSet-ShiftBHSHIFTSUDAMPH.html)
- [SHIFT SUD CBD](ValueSet-ShiftBHSHIFTSUDCBD.html)
- [SHIFT SUD COC](ValueSet-ShiftBHSHIFTSUDCOC.html)
- [SHIFT SUD ETOH](ValueSet-ShiftBHSHIFTSUDETOH.html)
- [SHIFT SUD HAL](ValueSet-ShiftBHSHIFTSUDHAL.html)
- [SHIFT SUD INH](ValueSet-ShiftBHSHIFTSUDINH.html)
- [SHIFT SUD OPD](ValueSet-ShiftBHSHIFTSUDOPD.html)
- [SHIFT SUD OTH](ValueSet-ShiftBHSHIFTSUDOTH.html)
- [SHIFT SUD POLY](ValueSet-ShiftBHSHIFTSUDPOLY.html)
- [SHIFT SUD SED](ValueSet-ShiftBHSHIFTSUDSED.html)
- [SHIFT SUD TOB](ValueSet-ShiftBHSHIFTSUDTOB.html)

Combined ValueSets are also published for intersections such as:
- [SHIFT ABORTION | SHIFT PREG](ValueSet-ShiftBHSHIFTABORTIONSHIFTPREG.html)
- [SHIFT BH CORE | SHIFT BH DEV](ValueSet-ShiftBHSHIFTBHCORESHIFTBHDEV.html)
- [SHIFT SUD ETOH | SHIFT SUD OPD](ValueSet-ShiftBHSHIFTSUDETOHSHIFTSUDOPD.html)
- [SHIFT REPRO OTHER | SHIFT GAC](ValueSet-ShiftBHSHIFTREPROOTHERSHIFTGAC.html)

Bundle:
- [Bundle of SHIFT BH, SUD, and Repro Terminology Resources](Bundle-ShiftBHBundledTerminologyResources.html)

### Potential problems

The [QA report](../qa.html) Shows some problems that I didn't / couldn't fix. They fall into several categories:

1. Wrong Display -- looking at these, there are none that are semantically incorrect. But, since they are not identifical there is the chance that the intended code is not the code given.
2. This include has some concepts with displays and some without - check that this is what is intended -- not likely a problem, but if a display is not provided, then it is not possible to detect a misselected code.
3. Codes from New codeSystems -- Many of the "is not valid in the system" messages are due to the use of a code from a codeSystem that is not yet available in tx.fhir.org. Generally, tx.fhir.org does not have 2026 codes.
4. The expansion provided is has (N) )extra codes -- these seem to be related to the not valid codes. If it is not valid to include, then it will be extra when we force it into the expansion.
5. Because the expansion uses system **foo** without a version, it should list the system using the expansion parameter 'used-codesystem' -- I suspect this is something I should address with some parameter somewhere, but I don't know how to do it correctly.

#### Potential Tooling problem

```
ValueSet.expansion (l1/c3837805)	warning	The expansion provided is missing 979 codes (F10.14, F10.15, F10.150, F10.151, F10.159,...) that are in the expansion using default expansion parameters
ValueSet.expansion (l1/c3837805)	warning	The expansion provided is has 10,325 extra codes (102073Z, 10207YZ, 10900Z9, 10900ZA, 10900ZB,...) that are not in the expansion using default expansion parameters
```

These (an another) are indications of an expansion we did not ask for. The most likely cause is a terminology-server expansion/cache or validator comparison problem, because the default expansion is returning codes belonging to other ValueSets. This should be treated as a QA/tooling anomaly for SHIFT PREG, not fixed by changing the source CSV or adding codes to the PREG expansion.

#### New custom sensitivity codes

The Hannah CSV defined new sensitivity codes. I tried to use [the HL7 sensitivity codes](https://terminology.hl7.org/en/ValueSet-v3-InformationSensitivityPolicy.html) where possible, but some of the codes were not in HL7. I created a new CodeSystem for these codes, and used them in the ValueSets. The new CodeSystem is called `ShiftCustomActContextCodes`, and is defined in the [CodeSystem-ShiftCustomActContextCodes.html](CodeSystem-ShiftCustomActContextCodes.html).

The problem with defining new codes is that no previous policy or consent will be able to affect data tagged with these codes. So these code should be reviewed to assure that we only create new codes when there really is no existing code that can be used.

All of the sensitivity codes used here are in [ValueSet ShiftAllContextCodes](ValueSet-ShiftAllContextCodes.html)

Potential mappings from custom SHIFT context codes to existing HL7 sensitivity codes:

| SHIFT custom code | Closest HL7 sensitivity code | Assessment |
| --- | --- | --- |
| [BHDEV](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-BHDEV) | [DVD](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-DVD) | Strong match: developmental disability |
| [BHNCD](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-BHNCD) | [COGN](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-COGN) | Related, but broader: cognitive disability versus neurocognitive disorder |
| [PREG](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-PREG) | [PREGNANT](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-PREGNANT) | Strong match: pregnancy information |
| [STI](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-STI) | [STD](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-STD) | Strong match: sexually transmitted disease |
| [SUD ETOH](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-SUDETOH) | [ETHUD](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-ETHUD) | Strong match: alcohol use disorder |
| [SUD OPD](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-SUDOPD) | [OPIOIDUD](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-OPIOIDUD) | Strong match: opioid use disorder |
| [GAC](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-GAC) | [GENDER](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-GENDER) | Related, but broader/different: gender information versus gender-affirming care |
| [BHAGG](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-BHAGG) | [VIO](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-VIO) | Related, but different: aggressive or perpetrator behavior versus violence information |
| [BHSOM](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-BHSOM) | [MH](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-MH) or [PSY](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-PSY) | Partial match: somatization/functional disorder versus general mental health or psychiatry |
| [REPRO OTHER](CodeSystem-ShiftCustomActContextCodes.html#ShiftCustomActContextCodes-REPROOTHER) | [SEX](https://terminology.hl7.org/en/CodeSystem-v3-ActCode.html#v3-ActCode-SEX) | Partial match only: reproductive health overlaps but is not equivalent to sexuality |

### Note the total codes in codeSystems

| Code System | Approx. Count | Selected in Shift.fsh | Notes |
| --- | ---: | ---: | --- |
| ICD‑9‑CM | ~17,000 total | 2,770 | Historical; not in current sources |
| ICD‑10‑CM | 69k–78k | 8,722 | Includes 340 ICD-10-PCS-shaped codes currently emitted under the ICD-10-CM URI |
| ICD‑10‑PCS | 78k–87k | 0 | No separate ICD-10-PCS system is currently emitted |
| CPT | 10k–11k | 816 | AMA‑maintained |
| HCPCS Level II | 7k–8k | 377 | Supplies, DME, drugs |
| LOINC | 90k–100k | 3,609 | Labs, observations |
| RxNorm | ~120k | 0 | No RxNorm codes currently selected |
| SNOMED CT | 350k–360k | 11,073 | Clinical concepts |
| **Total** |  | **27,367** | Explicit `compose` concepts; expansion entries are not counted again |

