Privacy Consent driven access control through data sensitivity tagging. These ValueSets and SLS are in support of the [SHIFT Task Force's demo patients IG](https://build.fhir.org/ig/SHIFT-Task-Force/demo-fhir-data)

<div markdown="1" class="stu-note">

Published here are many variety of sensitive codes in ValueSets, but they are included only as examples. Formal ValueSet building is being done in HL7 as part of the [HL7 Cross-Paradigm Sensitive Data and Sensitivity Flags Library and Guidance](https://confluence.hl7.org/spaces/CGP/pages/321160258/Cross-Paradigm+Sensitive+Data+and+Sensitivity+Flags+Library+and+Guidance).
</div>

[Leap Security Labeling Service Discussion](sls.html) and Reference Implementation.

### SAMHSA

The following ValueSets are derived from the SAMHSA

SAMHSA big valueset - [https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest](https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest)

- [Set of codes that indicate ETH (alcohol and drug)](ValueSet-SamhsaSensitiveETH.html)
  - [Set of codes that indicate ETHUD (alcohol)](ValueSet-SamhsaSensitiveETHUD.html)
  - [Set of codes that indicate OPIOIDUD (drugs)](ValueSet-SamhsaSensitiveOPIOIDUD.html)
- [Set of codes that indicate PSY](ValueSet-SamhsaSensitivePSY.html)
- [Set of codes that indicate SDV](ValueSet-SamhsaSensitiveSDV.html)
- [Set of codes that indicate HIV](ValueSet-SamhsaSensitiveHIV.html)
- [Bundle of SAMHSA Sensitive Kind Codes](Bundle-SamhsaSensitiveBundle.html)

### Synthea

See [An alternative ValueSets built off of the Synthea modules](synthea.html)

### California AB352 - HealthNet California

See [California AB352](ab352.html) ValueSets built from HealthNet California code lists.
