Instance: Consent-AB352-Example
InstanceOf: Consent
Title: "AB352 Organizational Privacy Consent - depth"
Description: """
A FHIR Consent instance that is an explicit consent for AB 352 protected data, with provisions that reflect the statutory requirements, with auto-filter bypassed for in-state recipients.

- permit TPO
  - deny sensitive data [for TPO]
    - permit in-state [sensitive data for TPO]
"""
Usage: #example

* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category[0] = http://loinc.org#64292-6 "Release of information consent"

* patient = Reference(http://example.org/Patient/example)
* dateTime = "2025-01-15T12:00:00Z"

* organization[0] = Reference(http://example.org/Organization/ca-hospital)
* organization[0].display = "Example California Hospital"

* policyRule.coding.system = "urn:ietf:rfc:3986"
* policyRule.coding.code = #urn:law:us:ca:statute:AB352
* policyRule.coding.display = "California AB 352"

//* policy[0].authority = "https://example-hospital.org"
//* policy[0].uri = "urn:org:hospital:policyset:AB352"

* provision[0]
  * type = #permit
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT
  * securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "Normal"

  * provision[0]
    * type = #deny
        // Out-of-state recipient  -- By NOT specifying a location, we mean all
    * securityLabel[+] = AB352HealthSensitivityCs#ABORTION
    * securityLabel[+] = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
    * securityLabel[+] = AB352HealthSensitivityCs#CONTRACEPTION
    // Note this does leave ambiguous any R data that are not these three sensitivity tags.
    // don't need to restate purpose as it is inherited from parent provision.

    * provision[0]
      * type = #permit
      // In-state recipient, are permitted to access the sensitive data
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/consent-location"
      * extension[=].valueReference = Reference(Location/ca-location) 
        // don't need to restate the purpose and securityLabel here since they are inherited from the parent provision.
// Note that R4 Consent does not address what rule applies if NONE of the provisions match. (R6 has a default rule at the top level)

Instance: Consent-AB352-Example2
InstanceOf: Consent
Title: "AB352 Organizational Privacy Consent - breath"
Description: """
A FHIR Consent instance that is an explicit consent for AB 352 protected data, with provisions that reflect the statutory requirements, with auto-filter bypassed for in-state recipients.

Breath first - not possible with R6 consent structure, but shown here for clarity.

- permit TPO
  - deny sensitive data [for TPO]
  - permit in-state sensitive data [for TPO]
"""
Usage: #example

* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category[0] = http://loinc.org#64292-6 "Release of information consent"

* patient = Reference(http://example.org/Patient/example)
* dateTime = "2025-01-15T12:00:00Z"

* organization[0] = Reference(http://example.org/Organization/ca-hospital)
* organization[0].display = "Example California Hospital"

* policyRule.coding.system = "urn:ietf:rfc:3986"
* policyRule.coding.code = #urn:law:us:ca:statute:AB352
* policyRule.coding.display = "California AB 352"

//* policy[0].authority = "https://example-hospital.org"
//* policy[0].uri = "urn:org:hospital:policyset:AB352"

* provision[0]
  * type = #permit
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT
  * securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "Normal"

  * provision[0]
    * type = #deny
        // Out-of-state recipient  -- By NOT specifying a location, we mean all
    * securityLabel[+] = AB352HealthSensitivityCs#ABORTION
    * securityLabel[+] = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
    * securityLabel[+] = AB352HealthSensitivityCs#CONTRACEPTION
    // Note this does leave ambiguous any R data that are not these three sensitivity tags.
    // don't need to restate purpose as it is inherited from parent provision.

  * provision[1]
    * type = #permit
    // In-state recipient, are permitted to access the sensitive data
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/consent-location"
    * extension[=].valueReference = Reference(Location/ca-location) 
    * securityLabel[+] = AB352HealthSensitivityCs#ABORTION
    * securityLabel[+] = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
    * securityLabel[+] = AB352HealthSensitivityCs#CONTRACEPTION
        // don't need to restate purpose as it is inherited from parent provision.
// Note that R4 Consent does not address what rule applies if NONE of the provisions match. (R6 has a default rule at the top level)

Instance: Consent-AB352-Example4
InstanceOf: Consent
Title: "AB352 Organizational Privacy Consent - four deep"
Description: """
A FHIR Consent instance that is an explicit consent for AB 352 protected data, with provisions that reflect the statutory requirements, with auto-filter bypassed for in-state recipients, and exception for data from 2014.

- permit TPO for All data
  - deny AB352sensitive data [for TPO] (essentially for out-of-state)
    - permit in-state AB352 sensitive data [for TPO] (in-state, auto-filter bypassed)
      - deny in-state AB352 sensitive data from 2014
"""
Usage: #example

* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category[0] = http://loinc.org#64292-6 "Release of information consent"

* patient = Reference(http://example.org/Patient/example)
* dateTime = "2025-01-15T12:00:00Z"

* organization[0] = Reference(http://example.org/Organization/ca-hospital)
* organization[0].display = "Example California Hospital"

* policyRule.coding.system = "urn:ietf:rfc:3986"
* policyRule.coding.code = #urn:law:us:ca:statute:AB352
* policyRule.coding.display = "California AB 352"

//* policy[0].authority = "https://example-hospital.org"
//* policy[0].uri = "urn:org:hospital:policyset:AB352"

* provision[0]
  * type = #permit
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT

  * provision[0]
    * type = #deny
        // Out-of-state recipient  -- By NOT specifying a location, we mean all
    * securityLabel[+] = AB352HealthSensitivityCs#ABORTION
    * securityLabel[+] = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
    * securityLabel[+] = AB352HealthSensitivityCs#CONTRACEPTION
    // Note this does leave ambiguous any R data that are not these three sensitivity tags.
    // don't need to restate purpose as it is inherited from parent provision.

    * provision[0]
      * type = #permit
      // In-state recipient, are permitted to access the sensitive data
      * extension[+].url = "http://hl7.org/fhir/StructureDefinition/consent-location"
      * extension[=].valueReference = Reference(Location/ca-location) 
      * securityLabel[+] = AB352HealthSensitivityCs#ABORTION
      * securityLabel[+] = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
      * securityLabel[+] = AB352HealthSensitivityCs#CONTRACEPTION
          // don't need to restate purpose as it is inherited from parent provision.
      * provision[0]
        * type = #deny
        // In-state recipient, deny all data from 2014
        * dataPeriod.start = "2014-01-01"
        * dataPeriod.end = "2014-12-31"
  // Note that R4 Consent does not address what rule applies if NONE of the provisions match. (R6 has a default rule at the top level)

Instance: Consent-AB352-Example-AllowAll
InstanceOf: Consent
Title: "AB352 Organizational Privacy Consent - Allow All"
Description: """
A FHIR Consent instance that is an explicit consent for AB 352 protected data, with provisions that reflect Patient allowing all access.

- permit TPO
"""
Usage: #example

* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy "Privacy Consent"

* category[0] = http://loinc.org#64292-6 "Release of information consent"

* patient = Reference(http://example.org/Patient/example)
* dateTime = "2025-01-15T12:00:00Z"

* organization[0] = Reference(http://example.org/Organization/ca-hospital)
* organization[0].display = "Example California Hospital"

* policyRule.coding.system = "urn:ietf:rfc:3986"
* policyRule.coding.code = #urn:law:us:ca:statute:AB352
* policyRule.coding.display = "California AB 352"

* policy[0].authority = "https://example-hospital.org"
* policy[0].uri = "urn:org:hospital:policyset:AB352"

* provision[0]
  * type = #permit
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
  * purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT

  * securityLabel[+] = AB352HealthSensitivityCs#ABORTION
  * securityLabel[+] = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
  * securityLabel[+] = AB352HealthSensitivityCs#CONTRACEPTION
  * securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N "Normal"
  * securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R "Restricted"

Instance: ca-location
InstanceOf: Location
Title: "California Location"
Description: "Location resource representing California for use in Consent provisions."
* status = #active
* address.state = "CA"


Instance: AB352HealthSensitivityCs
InstanceOf: CodeSystem
Title: "Health Information Sensitivity Categories"
Description: """
Code system defining sensitivity categories for health information segmentation under California AB352.

Note did not use HL7 v2-ActCodes as two of the three categories are not represented there, and the GENDER code may be more broad than GENDER_AFFIRMING_CARE as intended here.
"""
Usage: #definition
* status = #active
* experimental = false
* caseSensitive = true
* title = "Health Information Sensitivity Categories"
* name = "AB352HealthSensitivityCs"
* description = """
Code system defining sensitivity categories for health information segmentation under California AB352.

Note did not use HL7 v2-ActCodes as two of the three categories are not represented there, and the GENDER code may be more broad than GENDER_AFFIRMING_CARE as intended here.
"""
* content = #complete
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/CodeSystem/AB352HealthSensitivityCs"
* version = "0.1.0"
* jurisdiction[0] = http://unstats.un.org/unsd/methods/m49/m49.htm#840 "United States of America"
* caseSensitive = true
// Codes representing types of sensitive health information under AB352
* concept[+].code = #ABORTION
* concept[=].display = "Abortion-related services"
* concept[=].definition = "Health information related to abortion services, including procedures, counseling, and follow-up care."
* concept[+].code = #GENDER_AFFIRMING_CARE
* concept[=].display = "Gender-affirming care"
* concept[=].definition = "Health information related to gender-affirming care, including hormone therapy, surgeries, and counseling."
* concept[+].code = #CONTRACEPTION
* concept[=].display = "Contraception"
* concept[=].definition = "Health information related to contraception methods, counseling, and management."
/* 
* concept[+].code = #nothing
* concept[=].display = "Test for Nothing"
* concept[=].definition = "Inactive code."
* concept[=].property[+].code = #inactive
* concept[=].property[=].valueBoolean = true
* concept[=].property[+].code = #status
* concept[=].property[=].valueCode = #retired
* property[+].code = #inactive
* property[=].type = #boolean
* property[=].uri = "http://hl7.org/fhir/concept-properties#inactive"
* property[+].code = #status
* property[=].type = #code
* property[=].uri = "http://hl7.org/fhir/concept-properties#status"
*/


Instance: AB352SegmentationTags
InstanceOf: ValueSet
Title: "AB352 Segmentation Tags"
Description: "ValueSet of security labels used to segment AB352-sensitive health information in meta.security."
Usage: #definition
* status = #active
* experimental = false
* version = "0.1.0"
* title = "AB352 Segmentation Tags"
* name = "AB352SegmentationTags"
* description = "ValueSet of security labels used to segment AB352-sensitive health information in meta.security."
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/AB352SegmentationTags"
//* compose.inactive = true
* compose.include[0].system = "http://SHIFT-Task-Force.github.io/slsValueSets/CodeSystem/AB352HealthSensitivityCs"


Alias: $loinc = http://loinc.org
Alias: $snomed = http://snomed.info/sct
Alias: $icd9cm = http://hl7.org/fhir/sid/icd-9-cm
Alias: $icd10cm = http://hl7.org/fhir/sid/icd-10-cm
Alias: $cpt = http://www.ama-assn.org/go/cpt

Instance: AB352ValueSetBundle
InstanceOf: Bundle
Title: "AB352 ValueSet Bundle"
Description: "A FHIR Bundle containing all ValueSets related to AB352 sensitive topics."
* type = #collection
//* entry[+].resource = AB352SegmentationTags
* entry[+].resource = AB352AbortionTopicsHealthNet
* entry[=].fullUrl = "http://example.org/ValueSet/AB352AbortionTopicsHealthNet"
* entry[+].resource = AB352GenderAffirmingCareHealthNet
* entry[=].fullUrl = "http://example.org/ValueSet/AB352GenderAffirmingCareHealthNet"
* entry[+].resource = AB352ContraceptionTopicsAi
* entry[=].fullUrl = "http://example.org/ValueSet/AB352ContraceptionTopicsAi"

Instance: AB352AbortionTopicsHealthNet
InstanceOf: ValueSet
Usage: #definition
Title: "Abortion-Related Health Topics (Health Net California)"
Description: """
Health Net explains and references 500073-Abortion-DX-Code-List.pdf file primarily within its Provider Library and through Provider Bulletins related to legislative compliance. The specific explanation is found in the context of Assembly Bill (AB) 352, which mandates the segregation and protection of sensitive health data.

**Where the Explanation is Located:**

1. **Provider Bulletin 24-351 (New Laws Help Safeguard Privacy):** Health Net (and its affiliate Wellcare) issued this bulletin to explain the requirements of AB 352. The bulletin explicitly identifies abortion and abortion-related services as "Sensitive Services" that must be:
   - Segregated from the rest of the patient's medical record.
   - Excluded from automatic sharing with the California Data Exchange Framework (DxF).
   - Protected from out-of-state subpoenas or investigations.
   - **Reference:** [Wellcare/Health Net Bulletin 24-351](https://providerlibrary.healthnetcalifornia.com/)

2. **Health Net Provider Library - `Pregnancy Termination` Section:** The website hosts a dedicated page for pregnancy termination benefits. It explains that to comply with California laws (specifically SB 245 for cost-sharing and AB 352 for privacy), providers must use specific diagnosis codes. The 500073 PDF serves as the technical master list for these required codes.
   - **Reference:** [Pregnancy Termination - Health Net Provider Library](https://providerlibrary.healthnetcalifornia.com/)

3. **The PDF Itself:** The document title, `ICD-10-CM Codes for Abortion-Related Services,` is the direct label Health Net uses on its search results and directory pages to explain what the file contains. It lists codes ranging from O00 (Ectopic pregnancy) to Z33.2 (Encounter for elective termination).

**How Health Net Directs Providers to Use This File:**

According to the site's AB 352 guidance, Health Net recommends that IT and Billing departments download this PDF and use the listed codes to create firewalls in EHR systems. If a patient's record contains any code found in 500073-Abortion-DX-Code-List.pdf, the system should automatically:
- Block that data from being sent to out-of-state entities.
- Prevent the data from being discovered in automated health information exchanges.

**Direct Link to the Document:** [500073-Abortion-DX-Code-List.pdf](https://providerlibrary.healthnetcalifornia.com/content/dam/centene/healthnet/pdfs/providerlibrary/500073-Abortion-DX-Code-List.pdf)

**Note:** This list may not be all-inclusive and is subject to change.
"""
* status = #active
* experimental = false
* version = "0.1.0"
* date = "2023-01-01T00:00:00Z" // Best guess at publication date, as there is not a date on the PDF itself.
* name = "AB352AbortionTopicsHealthNet"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/AB352AbortionTopicsHealthNet"
* title = "Abortion-Related Health Topics (Health Net California)"
* description = """
Health Net explains and references 500073-Abortion-DX-Code-List.pdf file primarily within its Provider Library and through Provider Bulletins related to legislative compliance. The specific explanation is found in the context of Assembly Bill (AB) 352, which mandates the segregation and protection of sensitive health data.

**Where the Explanation is Located:**

1. **Provider Bulletin 24-351 (New Laws Help Safeguard Privacy):** Health Net (and its affiliate Wellcare) issued this bulletin to explain the requirements of AB 352. The bulletin explicitly identifies abortion and abortion-related services as "Sensitive Services" that must be:
   - Segregated from the rest of the patient's medical record.
   - Excluded from automatic sharing with the California Data Exchange Framework (DxF).
   - Protected from out-of-state subpoenas or investigations.
   - **Reference:** [Wellcare/Health Net Bulletin 24-351](https://providerlibrary.healthnetcalifornia.com/)

2. **Health Net Provider Library - `Pregnancy Termination` Section:** The website hosts a dedicated page for pregnancy termination benefits. It explains that to comply with California laws (specifically SB 245 for cost-sharing and AB 352 for privacy), providers must use specific diagnosis codes. The 500073 PDF serves as the technical master list for these required codes.
   - **Reference:** [Pregnancy Termination - Health Net Provider Library](https://providerlibrary.healthnetcalifornia.com/)

3. **The PDF Itself:** The document title, `ICD-10-CM Codes for Abortion-Related Services,` is the direct label Health Net uses on its search results and directory pages to explain what the file contains. It lists codes ranging from O00 (Ectopic pregnancy) to Z33.2 (Encounter for elective termination).

**How Health Net Directs Providers to Use This File:**

According to the site's AB 352 guidance, Health Net recommends that IT and Billing departments download this PDF and use the listed codes to create firewalls in EHR systems. If a patient's record contains any code found in 500073-Abortion-DX-Code-List.pdf, the system should automatically:
- Block that data from being sent to out-of-state entities.
- Prevent the data from being discovered in automated health information exchanges.

**Direct Link to the Document:** [500073-Abortion-DX-Code-List.pdf](https://providerlibrary.healthnetcalifornia.com/content/dam/centene/healthnet/pdfs/providerlibrary/500073-Abortion-DX-Code-List.pdf)

**Note:** This list may not be all-inclusive and is subject to change."""
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = AB352HealthSensitivityCs#ABORTION
// ------------------------------------------------------------
// ICD-10-CM — Abortion-related diagnoses (Health Net CA)
// ------------------------------------------------------------
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #O00.00   // Abdominal pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.01   // Abdominal pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.101  // Right tubal pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.102  // Left tubal pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.109  // Unspecified tubal pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.111  // Right tubal pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.112  // Left tubal pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.119  // Unspecified tubal pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.201  // Right ovarian pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.202  // Left ovarian pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.209  // Unspecified ovarian pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.211  // Right ovarian pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.212  // Left ovarian pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.219  // Unspecified ovarian pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.80   // Other ectopic pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.81   // Other ectopic pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.90   // Unspecified ectopic pregnancy without intrauterine pregnancy
* compose.include[=].concept[+].code = #O00.91   // Unspecified ectopic pregnancy with intrauterine pregnancy
* compose.include[=].concept[+].code = #O01.1    // Incomplete and partial hydatidiform mole
* compose.include[=].concept[+].code = #O01.9    // Hydatidiform mole, unspecified
* compose.include[=].concept[+].code = #O02.1    // Missed abortion
* compose.include[=].concept[+].code = #O03.0    // Genital tract and pelvic infection following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.1    // Delayed or excessive hemorrhage following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.2    // Embolism following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.30   // Unspecified complication following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.32   // Renal failure following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.33   // Metabolic disorder following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.34   // Damage to pelvic organs following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.35   // Other venous complications following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.36   // Cardiac arrest following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.37   // Sepsis following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.38   // Urinary tract infection following incomplete spontaneous abortion
* compose.include[=].concept[+].code = #O03.39   // Incomplete spontaneous abortion with other complications
* compose.include[=].concept[+].code = #O03.4    // Incomplete spontaneous abortion without complication
* compose.include[=].concept[+].code = #O03.5    // Genital tract and pelvic infection following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.6    // Delayed or excessive hemorrhage following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.7    // Embolism following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.80   // Unspecified complication following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.81   // Shock following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.82   // Renal failure following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.83   // Metabolic disorder following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.84   // Damage to pelvic organs following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.85   // Other venous complications following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.86   // Cardiac arrest following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.87   // Sepsis following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.88   // Urinary tract infection following complete or unspecified spontaneous abortion
* compose.include[=].concept[+].code = #O03.89   // Complete or unspecified spontaneous abortion with other complications
* compose.include[=].concept[+].code = #O03.9    // Complete or unspecified spontaneous abortion without complication
* compose.include[=].concept[+].code = #O04.5    // Genital tract and pelvic infection following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.6    // Delayed or excessive hemorrhage following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.7    // Embolism following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.80   // (Induced) termination of pregnancy with unspecified complications
* compose.include[=].concept[+].code = #O04.81   // Shock following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.82   // Renal failure following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.83   // Metabolic disorder following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.84   // Damage to pelvic organs following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.85   // Other venous complications following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.86   // Cardiac arrest following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.87   // Sepsis following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.88   // Urinary tract infection following (induced) termination of pregnancy
* compose.include[=].concept[+].code = #O04.89   // (Induced) termination of pregnancy with other complications
* compose.include[=].concept[+].code = #O07.0    // Genital tract and pelvic infection following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.1    // Delayed or excessive hemorrhage following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.2    // Embolism following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.30   // Failed attempted termination of pregnancy with unspecified complications
* compose.include[=].concept[+].code = #O07.31   // Shock following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.32   // Renal failure following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.33   // Metabolic disorder following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.34   // Damage to pelvic organs following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.35   // Other venous complications following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.36   // Cardiac arrest following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.37   // Sepsis following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.38   // Urinary tract infection following failed attempted termination of pregnancy
* compose.include[=].concept[+].code = #O07.39   // Failed attempted termination of pregnancy with other complications
* compose.include[=].concept[+].code = #O07.4    // Failed attempted termination of pregnancy without complication
* compose.include[=].concept[+].code = #O08.2    // Embolism following ectopic and molar pregnancy
* compose.include[=].concept[+].code = #O08.3    // Shock following ectopic and molar pregnancy
* compose.include[=].concept[+].code = #O08.4    // Renal failure following ectopic and molar pregnancy
* compose.include[=].concept[+].code = #O08.82   // Sepsis following ectopic and molar pregnancy
* compose.include[=].concept[+].code = #O08.83   // Urinary tract infection following an ectopic and molar pregnancy
* compose.include[=].concept[+].code = #O08.89   // Other complications following an ectopic and molar pregnancy
* compose.include[=].concept[+].code = #O20.0    // Threatened abortion
* compose.include[=].concept[+].code = #O20.8    // Other hemorrhage in early pregnancy
* compose.include[=].concept[+].code = #O20.9    // Hemorrhage in early pregnancy, unspecified
* compose.include[=].concept[+].code = #Q89.7    // Multiple congenital malformations, not elsewhere classified
* compose.include[=].concept[+].code = #Z33.2    // Encounter for elective termination of pregnancy
* compose.include[=].concept[+].code = #Z64.0    // Problems related to unwanted pregnancy


Instance: AB352GenderAffirmingCareHealthNet
InstanceOf: ValueSet
Usage: #definition
Title: "Gender-Affirming Care Codes (Health Net California)"
Description: """
CPT and ICD-10-CM codes referenced in Health Net California's clinical policy
'HNCA.CP.MP.496 - Gender Affirming Procedures'. Intended for segmentation of
gender-affirming care under AB352.

**Health Net Bulletin 24-351**

Health Net's [bulletin 24-351](https://providerlibrary.healthnetcalifornia.com/) explicitly tells providers that services defined in policies like HNCA.CP.MP.496 must be:

- **Blocked from automatic sharing** with the California Data Exchange Framework (DxF).
- **Omitted from responses** to out-of-state subpoenas or investigations.
- **Flagged within the EHR** to prevent unauthorized access by users outside of California.

**Where to Find and Download HNCA.CP.MP.496.pdf** Health Net maintains this policy in several locations within their provider libraries:

- **Direct PDF Link:** [HNCA.CP.MP.496 - Gender Affirming Procedures](https://providerlibrary.healthnetcalifornia.com/content/dam/centene/healthnet/pdfs/providerlibrary/HNCA.CP.MP.496.pdf)
- **The Provider Library Archive:** You can find this by navigating to Health Net Provider Library > Resources > Clinical Policies and searching for `Gender Affirming Procedures` or the code `496.`
"""
* status = #active
* experimental = false
* version = "0.1.0"
* date = "2024-01-01T00:00:00Z" // Best guess at publication date, as there is not a date on the PDF itself.
* title = "Gender-Affirming Care Codes (Health Net California)"
* name = "AB352GenderAffirmingCareHealthNet"
* description = """
CPT and ICD-10-CM codes referenced in Health Net California's clinical policy
'HNCA.CP.MP.496 - Gender Affirming Procedures'. Intended for segmentation of
gender-affirming care under AB352.

**Health Net Bulletin 24-351**

Health Net's [bulletin 24-351](https://providerlibrary.healthnetcalifornia.com/) explicitly tells providers that services defined in policies like HNCA.CP.MP.496 must be:

- **Blocked from automatic sharing** with the California Data Exchange Framework (DxF).
- **Omitted from responses** to out-of-state subpoenas or investigations.
- **Flagged within the EHR** to prevent unauthorized access by users outside of California.

**Where to Find and Download HNCA.CP.MP.496.pdf** Health Net maintains this policy in several locations within their provider libraries:

- **Direct PDF Link:** [HNCA.CP.MP.496 - Gender Affirming Procedures](https://providerlibrary.healthnetcalifornia.com/content/dam/centene/healthnet/pdfs/providerlibrary/HNCA.CP.MP.496.pdf)
- **The Provider Library Archive:** You can find this by navigating to Health Net Provider Library > Resources > Clinical Policies and searching for `Gender Affirming Procedures` or the code `496.`
"""
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/AB352GenderAffirmingCareHealthNet"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = AB352HealthSensitivityCs#GENDER_AFFIRMING_CARE
// ------------------------------------------------------------
// CPT CODES (from Health Net “Coding Implications” section)
// ------------------------------------------------------------
* compose.include[+].system = "http://www.ama-assn.org/go/cpt"
* compose.include[=].concept[+].code = #11960
* compose.include[=].concept[+].code = #11950
* compose.include[=].concept[+].code = #11951
* compose.include[=].concept[+].code = #11952
//* compose.include[=].concept[+].code = #11953
* compose.include[=].concept[+].code = #11954
* compose.include[=].concept[+].code = #11970
* compose.include[=].concept[+].code = #14000
* compose.include[=].concept[+].code = #14001
* compose.include[=].concept[+].code = #14040
* compose.include[=].concept[+].code = #14041
* compose.include[=].concept[+].code = #15100
* compose.include[=].concept[+].code = #15101
* compose.include[=].concept[+].code = #15120
* compose.include[=].concept[+].code = #15121
* compose.include[=].concept[+].code = #15200
* compose.include[=].concept[+].code = #15570
* compose.include[=].concept[+].code = #15574
* compose.include[=].concept[+].code = #15600
* compose.include[=].concept[+].code = #15620
* compose.include[=].concept[+].code = #15757
* compose.include[=].concept[+].code = #15758
* compose.include[=].concept[+].code = #15775
* compose.include[=].concept[+].code = #15776
* compose.include[=].concept[+].code = #15780
* compose.include[=].concept[+].code = #15781
* compose.include[=].concept[+].code = #15782
* compose.include[=].concept[+].code = #15783
* compose.include[=].concept[+].code = #15786
* compose.include[=].concept[+].code = #15787
* compose.include[=].concept[+].code = #15788
* compose.include[=].concept[+].code = #15789
* compose.include[=].concept[+].code = #15792
* compose.include[=].concept[+].code = #15793
* compose.include[=].concept[+].code = #15820
* compose.include[=].concept[+].code = #15821
* compose.include[=].concept[+].code = #15822
* compose.include[=].concept[+].code = #15823
* compose.include[=].concept[+].code = #15824
* compose.include[=].concept[+].code = #15825
* compose.include[=].concept[+].code = #15826
* compose.include[=].concept[+].code = #15828
* compose.include[=].concept[+].code = #15829
* compose.include[=].concept[+].code = #15830
* compose.include[=].concept[+].code = #15832
* compose.include[=].concept[+].code = #15833
* compose.include[=].concept[+].code = #15834
* compose.include[=].concept[+].code = #15835
* compose.include[=].concept[+].code = #15836
* compose.include[=].concept[+].code = #15837
* compose.include[=].concept[+].code = #15838
* compose.include[=].concept[+].code = #15839
* compose.include[=].concept[+].code = #15876
* compose.include[=].concept[+].code = #15877
* compose.include[=].concept[+].code = #15878
* compose.include[=].concept[+].code = #15879
* compose.include[=].concept[+].code = #17380
* compose.include[=].concept[+].code = #19300
* compose.include[=].concept[+].code = #19301
* compose.include[=].concept[+].code = #19303
* compose.include[=].concept[+].code = #19316
* compose.include[=].concept[+].code = #19318
* compose.include[=].concept[+].code = #19325
* compose.include[=].concept[+].code = #19350
* compose.include[=].concept[+].code = #21120
* compose.include[=].concept[+].code = #21121
* compose.include[=].concept[+].code = #21122
* compose.include[=].concept[+].code = #21123
* compose.include[=].concept[+].code = #21125
* compose.include[=].concept[+].code = #21127
* compose.include[=].concept[+].code = #21208
* compose.include[=].concept[+].code = #21209
* compose.include[=].concept[+].code = #21210
* compose.include[=].concept[+].code = #21270
* compose.include[=].concept[+].code = #30400
* compose.include[=].concept[+].code = #30410
* compose.include[=].concept[+].code = #30420
* compose.include[=].concept[+].code = #30430
* compose.include[=].concept[+].code = #30435
* compose.include[=].concept[+].code = #30450
* compose.include[=].concept[+].code = #31580
* compose.include[=].concept[+].code = #31587
* compose.include[=].concept[+].code = #31599
* compose.include[=].concept[+].code = #31899
* compose.include[=].concept[+].code = #44145
* compose.include[=].concept[+].code = #53400
* compose.include[=].concept[+].code = #53405
* compose.include[=].concept[+].code = #53410
* compose.include[=].concept[+].code = #53415
* compose.include[=].concept[+].code = #53420
* compose.include[=].concept[+].code = #53425
* compose.include[=].concept[+].code = #53430
* compose.include[=].concept[+].code = #53460
* compose.include[=].concept[+].code = #54125
* compose.include[=].concept[+].code = #54340
* compose.include[=].concept[+].code = #54400
* compose.include[=].concept[+].code = #54401
* compose.include[=].concept[+].code = #54405
* compose.include[=].concept[+].code = #54406
* compose.include[=].concept[+].code = #54408
* compose.include[=].concept[+].code = #54410
* compose.include[=].concept[+].code = #54411
* compose.include[=].concept[+].code = #54415
* compose.include[=].concept[+].code = #54416
* compose.include[=].concept[+].code = #54417
* compose.include[=].concept[+].code = #54520
* compose.include[=].concept[+].code = #54660
* compose.include[=].concept[+].code = #54690
* compose.include[=].concept[+].code = #55175
* compose.include[=].concept[+].code = #55180
* compose.include[=].concept[+].code = #55970
* compose.include[=].concept[+].code = #55980
* compose.include[=].concept[+].code = #56625
* compose.include[=].concept[+].code = #56800
* compose.include[=].concept[+].code = #56805
* compose.include[=].concept[+].code = #56810
* compose.include[=].concept[+].code = #57106
* compose.include[=].concept[+].code = #57107
* compose.include[=].concept[+].code = #57110
* compose.include[=].concept[+].code = #57111
* compose.include[=].concept[+].code = #57291
* compose.include[=].concept[+].code = #57292
* compose.include[=].concept[+].code = #57295
* compose.include[=].concept[+].code = #57296
* compose.include[=].concept[+].code = #57335
* compose.include[=].concept[+].code = #57426
* compose.include[=].concept[+].code = #58150
* compose.include[=].concept[+].code = #58180
* compose.include[=].concept[+].code = #58260
* compose.include[=].concept[+].code = #58262
* compose.include[=].concept[+].code = #58263
* compose.include[=].concept[+].code = #58267
* compose.include[=].concept[+].code = #58270
* compose.include[=].concept[+].code = #58275
* compose.include[=].concept[+].code = #58280
* compose.include[=].concept[+].code = #58285




Instance: AB352ContraceptionTopicsAi
InstanceOf: ValueSet
Title: "Contraception-Related Health Topics"
Description: """
Clinical concepts related to contraception drawn from LOINC, SNOMED CT, and ICD-10-CM.
Intended for segmentation of sensitive reproductive health information under AB352.

This ValueSet does not include code recommendations from Health Net California. Health Net California does not have a single source document for contraception-related codes similar to their abortion-related code list. Instead, Health Net references multiple sources, including the DHCS Family PACT Code List, within various policy documents.

- **Health Net Bulletin 24-351:** New Laws Help Safeguard Privacy ([View Link](https://providerlibrary.healthnetcalifornia.com/))
- **Health Net Medi-Cal Provider Manual (Chapter 4):** Sensitive Services section ([Link to Manuals](https://providerlibrary.healthnetcalifornia.com/))
- **Family PACT Policies:** Health Net adopts the DHCS Family PACT Code List as their baseline for identifying what constitutes a contraceptive service.
"""
Usage: #definition
* status = #active
* experimental = false
* compose.inactive = true
* version = "0.1.0"
* date = "2026-01-23T00:00:00Z"
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = AB352HealthSensitivityCs#CONTRACEPTION
* title = "Contraception-Related Health Topics"
* name = "AB352ContraceptionTopicsAi"
* description = """
Clinical concepts related to contraception drawn from LOINC, SNOMED CT, and ICD-10-CM.
Intended for segmentation of sensitive reproductive health information under AB352.

This ValueSet does not include code recommendations from Health Net California. Health Net California does not have a single source document for contraception-related codes similar to their abortion-related code list. Instead, Health Net references multiple sources, including the DHCS Family PACT Code List, within various policy documents.

- **Health Net Bulletin 24-351:** New Laws Help Safeguard Privacy ([View Link](https://providerlibrary.healthnetcalifornia.com/))
- **Health Net Medi-Cal Provider Manual (Chapter 4):** Sensitive Services section ([Link to Manuals](https://providerlibrary.healthnetcalifornia.com/))
- **Family PACT Policies:** Health Net adopts the DHCS Family PACT Code List as their baseline for identifying what constitutes a contraceptive service.
"""
// ------------------------------------------------------------
// LOINC — contraceptive method, history, counseling, education
// ------------------------------------------------------------
* compose.include[0].system = "http://loinc.org"
* compose.include[0].concept[0].code = #8663-7
* compose.include[0].concept[1].code = #8664-5

// ------------------------------------------------------------
// SNOMED CT — contraception counseling, management, LARC, sterilization
// ------------------------------------------------------------
* compose.include[1].system = "http://snomed.info/sct"
* compose.include[1].concept[0].code = #169745008
* compose.include[1].concept[1].code = #386761002
* compose.include[1].concept[2].code = #304527002
* compose.include[1].concept[3].code = #169472004

// ------------------------------------------------------------
// ICD-10-CM — contraceptive management, surveillance, sterilization
// ------------------------------------------------------------
* compose.include[2].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[2].concept[0].code = #Z30.011
* compose.include[2].concept[1].code = #Z30.012
* compose.include[2].concept[2].code = #Z30.013
* compose.include[2].concept[3].code = #Z30.014
* compose.include[2].concept[4].code = #Z30.015
* compose.include[2].concept[5].code = #Z30.016
* compose.include[2].concept[6].code = #Z30.017
* compose.include[2].concept[7].code = #Z30.018
* compose.include[2].concept[8].code = #Z30.019
* compose.include[2].concept[9].code = #Z30.2
* compose.include[2].concept[10].code = #Z30.430
* compose.include[2].concept[11].code = #Z30.431
* compose.include[2].concept[12].code = #Z30.432
* compose.include[2].concept[13].code = #Z30.8
* compose.include[2].concept[14].code = #Z30.9

// ------------------------------------------------------------
// CPT — LARC, sterilization, and related contraceptive procedures
// ------------------------------------------------------------
* compose.include[3].system = "http://www.ama-assn.org/go/cpt"
* compose.include[3].concept[0].code = #11981
* compose.include[3].concept[1].code = #11982
* compose.include[3].concept[2].code = #11983
* compose.include[3].concept[3].code = #58300
* compose.include[3].concept[4].code = #58301
* compose.include[3].concept[5].code = #58600
* compose.include[3].concept[6].code = #58611
* compose.include[3].concept[7].code = #58615
* compose.include[3].concept[8].code = #58670
* compose.include[3].concept[9].code = #58671
* compose.include[3].concept[10].code = #55250
* compose.include[3].concept[11].code = #99401
* compose.include[3].concept[12].code = #99402
* compose.include[3].concept[13].code = #99403
* compose.include[3].concept[14].code = #99404
