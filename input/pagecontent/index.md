Privacy Consent driven access control through data sensitivity tagging. These ValueSets and SLS are in support of the [SHIFT Task Force's demo patients IG](https://build.fhir.org/ig/SHIFT-Task-Force/demo-fhir-data)

<div markdown="1" class="stu-note">

Published here are many variety of sensitive codes in ValueSets, but they are included only as examples. Formal ValueSet building is being done in HL7 as part of the [HL7 Cross-Paradigm Sensitive Data and Sensitivity Flags Library and Guidance](https://confluence.hl7.org/spaces/CGP/pages/321160258/Cross-Paradigm+Sensitive+Data+and+Sensitivity+Flags+Library+and+Guidance).
</div>

### Sensitive data as Venn diagram

Normal data is all data that is identifiable and not specifically sensitive, any data that is sensitive would be Restricted. "Normal" refers to the normal average curve, thus the majority of data. Sensitive data can be categorized into sensitivity topics, and some data may fall into multiple sensitive categories, as illustrated in the Venn diagram below.

Sensitive topics are generally potentially stigmatizing information, for which exposure would present high risk of harm to an individual's reputation and sense of privacy. These sensitivity topics are indicated as a "sensitivity" code in the meta.security tag of FHIR resources, and can be used for access control decisions in a Privacy Consent driven access control model.

Normal data is often not tagged as Normal, but rather is just the absence of any sensitive tag. This is recognizing that the vast majority of medical data are Normal (algorithmically average). The presence of any sensitive tag would make the data Restricted, indicated as `R` restricted Confidentiality code.

<div>
<img src="patient-health-data-venn.svg" caption="Sensitive data Venn diagram"/>
</div>

The data are tagged purely due to their data content, and not due to any other factors such as the Patient consent status. The labeling does not imply that there is any particular access control policy in place, but rather that the data is sensitive and may require special handling. The access control policies would be defined separately, and could use the presence of these sensitivity tag to make decisions about who can access the data and under what circumstances.

### SHIFT SLS ValueSets

The [SHIFT SLS ValueSets](SHIFTsls.html) are a set of ValueSets that are being developed in support of the SHIFT demo use-cases and the SHIFT SLS Reference Implementation. They are based on the codes that are being used in the SHIFT demo data, and are intended to be used as configuration files for the SLS-RI. They are not intended to be comprehensive, but rather to support the specific use-cases that SHIFT is working on.

SHIFT [SLS Reference Implementation GitHub Repository](https://github.com/SHIFT-Task-Force/sls-ri), and [SLS RI API Definition](https://build.fhir.org/ig/SHIFT-Task-Force/sls-ri-ig/branches/main/index.html).


### Leap SLS implicit valueSets

The Leap SLS reference implementation contains an internal set of codes and logic. The following has extracted that logic into ValueSets.

[Leap Security Labeling Service Discussion](LeapSls.html) and Reference Implementation.

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
