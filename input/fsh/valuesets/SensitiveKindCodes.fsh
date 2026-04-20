// Initially created from the LEAP SLS codes, but have evolved along with the SHIFT data for use with the SHIFT SLS RI.

CodeSystem: ExtraSensitiveCodes
Title: "Extra Sensitive Codes"
Description: "Sensitivity codes that are not defined in HL7"
* ^experimental = false
* ^caseSensitive = false
* #ABORTION "Abortion-related? TODO find the right code"

//------------------------------------------------------------------------------
// BEHAVIORAL HEALTH (BH) CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsBHCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Behavioral Health Codes"
Description: """
SHIFT SLS set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsBHCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsBHCodes"
* title = "ValueSet - SHIFT SLS Behavioral Health Codes"
* description = """
SHIFT SLS set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH

* compose.inactive = true

// SNOMED CT BH Observation Codes
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #720433000  // "PHQ-9 depression screening instrument" // JFM 10/23/2025 - in leap-sls code for PSY

// CPT BH Assessment/Procedure Codes
* compose.include[+].system = "http://www.ama-assn.org/go/cpt"
* compose.include[=].concept[+].code = #96127  // "Brief emotional/behavioral assessment"

// LOINC ASSESSMENT INSTRUMENT CODES
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #44249-1  // "PHQ-9 quick depression assessment panel" // JFM 10/23/2025 - in leap-sls code for PSY
* compose.include[=].concept[+].code = #89204-2  // "Patient Health Questionnaire-9: Depression" // JFM 10/23/2025 - in leap-sls code for PSY

// Medications
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #315952  // "Fluoxetine 20 MG Oral Capsule" // 10/23/2025 - in leap-sls code for BH
* compose.include[=].concept[+].code = #352364  // "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet"

// SNOMED CT additional codes
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #372767007  // "Fluoxetine (substance)" // 10/23/2025 - in leap-sls code for BH
* compose.include[=].concept[+].code = #310496002  // "Major depressive disorder, recurrent, moderate"
* compose.include[=].concept[+].code = #1376001  // "Obsessive-compulsive personality disorder"
//* compose.include[=].concept[+].code = #5602001  // "Opioid abuse"

// ICD-10-CM Conditions
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #F33.1  // "Major depressive disorder, recurrent, moderate"
* compose.include[=].concept[+].code = #F60.5  // "Obsessive-compulsive personality disorder"
//* compose.include[=].concept[+].code = #F11.11  // "Opioid abuse, in remission"

* expansion.timestamp = "2025-05-08T20:42:00-05:00" // last time leap-sls codes were edited
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #372767007
* expansion.contains[+].system =  "http://snomed.info/sct"
* expansion.contains[=].code = #310496002
* expansion.contains[+].system =  "http://snomed.info/sct"
* expansion.contains[=].code = #1376001
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #720433000
* expansion.contains[+].system = "http://www.ama-assn.org/go/cpt"
* expansion.contains[=].code = #96127
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #44249-1
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #89204-2
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #315952
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #352364
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #F33.1
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #F60.5



//------------------------------------------------------------------------------
// SEXUALITY & REPRODUCTIVE HEALTH (SEX) CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsSEXCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Sexuality and Reproductive Health Codes"
Description: """
SHIFT SLS set of codes representing sexuality and reproductive health requiring special privacy protections

Identified as: v3-ActCode#SEX
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsSEXCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSEXCodes"
* title = "ValueSet - SHIFT SLS Sexuality and Reproductive Health Codes"
* description = """
SHIFT SLS set of codes representing sexuality and reproductive health requiring special privacy protections

Identified as: v3-ActCode#SEX
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SEX

* compose.inactive = true

// Sexual orientation
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #76690-7 // "Sexual orientation"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #42035005 // "Bisexual (finding)"

// Irregular periods / menstrual conditions
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #N92.6 // "Irregular menstruation, unspecified"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #80182007 // "Irregular periods (finding)"

// Abortion / elective termination of pregnancy
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #Z33.2 // "Encounter for elective termination of pregnancy"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #18391007 // "Elective abortion (disorder)"
* compose.include[+].system = "http://www.ama-assn.org/go/cpt"
* compose.include[=].concept[+].code = #59840 // "Induced abortion, by dilation and curettage"
* compose.include[+].system = "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* compose.include[=].concept[+].code = #S2260 // "Induced abortion 17-24 weeks"

// Contraception
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #1358781 // "Loestrin 1/20 21 Day Pack"

// Abortion medications
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #330381 // "mifepristone 200 MG"
* compose.include[=].concept[+].code = #317128 // "misoprostol 0.2 MG Oral Tablet"

// Obstetric imaging / screening
* compose.include[+].system = "http://www.ama-assn.org/go/cpt"
* compose.include[=].concept[+].code = #76801 // "Ultrasound, pregnant uterus, first trimester"
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #48800-7 // "Second trimester quad maternal screen panel"

// Obstetric history and pregnancy observations
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #364324000 // "Measure of pregnancy (observable entity)"
* compose.include[=].concept[+].code = #440425000 // "Number of births at term (observable entity)"
* compose.include[=].concept[+].code = #440013005 // "Number of preterm births (observable entity)"
* compose.include[=].concept[+].code = #252113007 // "Number of abortions (observable entity)"
* compose.include[=].concept[+].code = #248991006 // "Number of live deliveries (observable entity)"
* compose.include[=].concept[+].code = #21840007 // "Date of last menstrual period (observable entity)"

* expansion.timestamp = "2026-04-20T00:00:00-05:00"

// Sexual orientation
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #76690-7
* expansion.contains[=].display = "Sexual orientation"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #42035005
* expansion.contains[=].display = "Bisexual (finding)"

// Irregular periods / menstrual conditions
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #N92.6
* expansion.contains[=].display = "Irregular menstruation, unspecified"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #80182007
* expansion.contains[=].display = "Irregular periods (finding)"

// Abortion / elective termination of pregnancy
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #Z33.2
* expansion.contains[=].display = "Encounter for elective termination of pregnancy"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #18391007
* expansion.contains[=].display = "Elective abortion (disorder)"
* expansion.contains[+].system = "http://www.ama-assn.org/go/cpt"
* expansion.contains[=].code = #59840
* expansion.contains[=].display = "Induced abortion, by dilation and curettage"
* expansion.contains[+].system = "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* expansion.contains[=].code = #S2260
* expansion.contains[=].display = "Induced abortion 17-24 weeks"

// Contraception
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #1358781
* expansion.contains[=].display = "Loestrin 1/20 21 Day Pack"

// Abortion medications
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #330381
* expansion.contains[=].display = "mifepristone 200 MG"
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #317128
* expansion.contains[=].display = "misoprostol 0.2 MG Oral Tablet"

// Obstetric imaging / screening
* expansion.contains[+].system = "http://www.ama-assn.org/go/cpt"
* expansion.contains[=].code = #76801
* expansion.contains[=].display = "Ultrasound, pregnant uterus, first trimester"
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #48800-7
* expansion.contains[=].display = "Second trimester quad maternal screen panel - Serum or Plasma"

// Obstetric history and pregnancy observations
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #364324000
* expansion.contains[=].display = "Measure of pregnancy (observable entity)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #440425000
* expansion.contains[=].display = "Number of births at term (observable entity)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #440013005
* expansion.contains[=].display = "Number of preterm births (observable entity)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #252113007
* expansion.contains[=].display = "Number of abortions (observable entity)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #248991006
* expansion.contains[=].display = "Number of live deliveries (observable entity)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #21840007
* expansion.contains[=].display = "Date of last menstrual period (observable entity)"

//------------------------------------------------------------------------------
// ABORTION CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsAbortionCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Abortion Codes"
Description: """
SHIFT SLS set of codes representing abortion-related conditions, procedures, diagnostics, and medications requiring special privacy protections

Identified as: ExtraSensitiveCodes#ABORTION
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsAbortionCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsAbortionCodes"
* title = "ValueSet - SHIFT SLS Abortion Codes"
* description = """
SHIFT SLS set of codes representing abortion-related conditions, procedures, diagnostics, and medications requiring special privacy protections

Identified as: ExtraSensitiveCodes#ABORTION
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://SHIFT-Task-Force.github.io/SLS-ValueSets/CodeSystem/extraSensitivityCodes#ABORTION

* compose.inactive = true

// Abortion conditions
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #Z33.2 // "Encounter for elective termination of pregnancy"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #18391007 // "Elective abortion (disorder)"

// Abortion procedures
* compose.include[+].system = "http://www.ama-assn.org/go/cpt"
* compose.include[=].concept[+].code = #59840 // "Induced abortion, by dilation and curettage"
* compose.include[+].system = "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* compose.include[=].concept[+].code = #S2260 // "Induced abortion 17-24 weeks"

// Abortion medications
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #330381 // "mifepristone 200 MG"
* compose.include[=].concept[+].code = #317128 // "misoprostol 0.2 MG Oral Tablet"

// Abortion-related imaging and screening
* compose.include[+].system = "http://www.ama-assn.org/go/cpt"
* compose.include[=].concept[+].code = #76801 // "Ultrasound, pregnant uterus, first trimester"
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #48800-7 // "Second trimester quad maternal screen panel"

* expansion.timestamp = "2026-04-20T00:00:00-05:00"

// Abortion conditions
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #Z33.2
* expansion.contains[=].display = "Encounter for elective termination of pregnancy"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #18391007
* expansion.contains[=].display = "Elective abortion (disorder)"

// Abortion procedures
* expansion.contains[+].system = "http://www.ama-assn.org/go/cpt"
* expansion.contains[=].code = #59840
* expansion.contains[=].display = "Induced abortion, by dilation and curettage"
* expansion.contains[+].system = "http://www.cms.gov/Medicare/Coding/HCPCSReleaseCodeSets"
* expansion.contains[=].code = #S2260
* expansion.contains[=].display = "Induced abortion 17-24 weeks"

// Abortion medications
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #330381
* expansion.contains[=].display = "mifepristone 200 MG"
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #317128
* expansion.contains[=].display = "misoprostol 0.2 MG Oral Tablet"

// Abortion-related imaging and screening
* expansion.contains[+].system = "http://www.ama-assn.org/go/cpt"
* expansion.contains[=].code = #76801
* expansion.contains[=].display = "Ultrasound, pregnant uterus, first trimester"
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #48800-7
* expansion.contains[=].display = "Second trimester quad maternal screen panel - Serum or Plasma"

//------------------------------------------------------------------------------
// SEXUALLY TRANSMITTED DISEASE (STD) CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsSTDCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Sexually Transmitted Disease Codes"
Description: """
SHIFT SLS set of codes representing sexually transmitted diseases requiring special privacy protections

Identified as: v3-ActCode#STD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsSTDCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSTDCodes"
* title = "ValueSet - SHIFT SLS Sexually Transmitted Disease Codes"
* description = """
SHIFT SLS set of codes representing sexually transmitted diseases requiring special privacy protections

Identified as: v3-ActCode#STD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#STD

* compose.inactive = true

// STD conditions
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #A56.2 // "Chlamydial infection of genitourinary tract, unspecified"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #428015005 // "Chlamydia trachomatis infection of genital structure (disorder)"

// STD diagnostic panels
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #92684-0 // "CT + NG + TV DNA panel - Urine by NAA with probe detection"

// STD treatment medications
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #330623 // "azithromycin 500 MG"

* expansion.timestamp = "2026-04-20T00:00:00-05:00"

// STD conditions
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #A56.2
* expansion.contains[=].display = "Chlamydial infection of genitourinary tract, unspecified"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #428015005
* expansion.contains[=].display = "Chlamydia trachomatis infection of genital structure (disorder)"

// STD diagnostic panels
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #92684-0
* expansion.contains[=].display = "Chlamydia trachomatis and Neisseria gonorrhoeae and Trichomonas vaginalis DNA panel - Urine by NAA with probe detection"

// STD treatment medications
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #330623
* expansion.contains[=].display = "azithromycin 500 MG"


//------------------------------------------------------------------------------
// HIV CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsHIVCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS HIV Codes"
Description: """
SHIFT SLS set of codes representing HIV-related conditions and treatments requiring special privacy protections

Identified as: v3-ActCode#HIV
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsHIVCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsHIVCodes"
* title = "ValueSet - SHIFT SLS HIV Codes"
* description = """
SHIFT SLS set of codes representing HIV-related conditions and treatments requiring special privacy protections

Identified as: v3-ActCode#HIV
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#HIV

* compose.inactive = true

// HIV diagnostic tests
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #80203-3 // "HIV 1 & 2 Ab SerPlBld IA.rapid (HIV ELISA with reflex Western blot)"

// HIV prevention / treatment medications
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #1747692 // "Descovy (tenofovir alafenamide / emtricitabine) - PrEP"

* expansion.timestamp = "2026-04-20T00:00:00-05:00"

// HIV diagnostic tests
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #80203-3
* expansion.contains[=].display = "HIV 1 & 2 Ab SerPlBld IA.rapid"

// HIV prevention / treatment medications
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #1747692
* expansion.contains[=].display = "Descovy"


//------------------------------------------------------------------------------
// GENETIC DISEASE INFORMATION (GDIS) CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsGDISCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Genetic Disease Information Codes"
Description: """
SHIFT SLS set of codes representing genetic disease information requiring special privacy protections

Identified as: v3-ActCode#GDIS
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsGDISCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsGDISCodes"
* title = "ValueSet - SHIFT SLS Genetic Disease Information Codes"
* description = """
SHIFT SLS set of codes representing genetic disease information requiring special privacy protections

Identified as: v3-ActCode#GDIS
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#GDIS

* compose.inactive = true

// Genetic / chromosomal screening panels
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #48800-7 // "Second trimester quad maternal screen panel - Serum or Plasma"

* expansion.timestamp = "2026-04-20T00:00:00-05:00"

// Genetic / chromosomal screening panels
* expansion.contains[+].system = "http://loinc.org"
* expansion.contains[=].code = #48800-7
* expansion.contains[=].display = "Second trimester quad maternal screen panel - Serum or Plasma"


//------------------------------------------------------------------------------
// SEXUAL ASSAULT / DOMESTIC VIOLENCE (SDV) CODES
//------------------------------------------------------------------------------
Instance: ShiftSlsSDVCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Sexual Assault / Domestic Violence Codes"
Description: """
SHIFT SLS set of codes representing sexual assault and domestic violence requiring special privacy protections

Identified as: v3-ActCode#SDV
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsSDVCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSDVCodes"
* title = "ValueSet - SHIFT SLS Sexual Assault / Domestic Violence Codes"
* description = """
SHIFT SLS set of codes representing sexual assault and domestic violence requiring special privacy protections

Identified as: v3-ActCode#SDV
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SDV

* compose.inactive = true

// Intimate partner violence
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #T74.11 // "Adult physical abuse, confirmed"
* compose.include[=].concept[+].code = #T74.11XA // "Adult physical abuse, confirmed, initial encounter"
* compose.include[=].concept[+].code = #T74.11XS // "Adult physical abuse, confirmed, sequela"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #706893006 // "Victim of intimate partner abuse (finding)"

// Child sexual abuse history
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #Z62.810 // "Personal history of physical and sexual abuse in childhood"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #713834002 // "Victim of child sexual exploitation (finding)"

* expansion.timestamp = "2026-04-20T00:00:00-05:00"

// Intimate partner violence
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #T74.11
* expansion.contains[=].display = "Adult physical abuse, confirmed"
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #T74.11XA
* expansion.contains[=].display = "Adult physical abuse, confirmed, initial encounter"
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #T74.11XS
* expansion.contains[=].display = "Adult physical abuse, confirmed, sequela"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #706893006
* expansion.contains[=].display = "Victim of intimate partner abuse (finding)"

// Child sexual abuse history
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #Z62.810
* expansion.contains[=].display = "Personal history of physical and sexual abuse in childhood"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #713834002
* expansion.contains[=].display = "Victim of child sexual exploitation (finding)"


//------------------------------------------------------------------------------
// PSYCHIATRIC NOTES (PSYTHPN, BH) CODES
// combined medication, conditions, and observations; 
// as it does not matter where these codes show up they would indicate the sensitivity kind SUD
//------------------------------------------------------------------------------
Instance: ShiftSlsPSYTHPNCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Psychiatric Notes Use Codes"
Description: """
SHIFT SLS set of codes representing psychiatric notes requiring special privacy protections. 

Identified as: PSYTHPN, BH
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsPSYTHPNCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsPSYTHPNCodes"
* title = "ValueSet - SHIFT SLS Psychiatric Notes Use Codes"
* description = """
SHIFT SLS set of codes representing psychiatric notes requiring special privacy protections. 

Identified as: PSYTHPN, BH
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#PSYTHPN
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH

* compose.inactive = true

* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #444175001  // "Cognitive behavioral therapy record"

* expansion.timestamp = "2025-05-10T20:42:00-05:00" // last time leap-sls codes were edited
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #444175001  // "Cognitive behavioral therapy record"


Instance: ShiftSlsOpioidCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Opioid Codes"
Description: """
SHIFT SLS set of codes representing opioid abuse requiring special privacy protections.

Identified as: v3-ActCode#OPIOIDUD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsOpioidCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsOpioidCodes"
* title = "ValueSet - SHIFT SLS Opioid Codes"
* description = """
SHIFT SLS set of codes representing opioid abuse requiring special privacy protections.

Identified as: v3-ActCode#OPIOIDUD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#OPIOIDUD
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUD
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#42CFRPart2
* compose.inactive = true

* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #425741009  // "Buprenorphine/naloxone"
* compose.include[=].concept[+].code = #5602001  // "Opioid abuse"
* compose.include[=].concept[+].code = #145121000119106 // "Intravenous nondependent opioid abuse" //10/23/2025 - in leap-sls code for OUD
// The following codes added from Synthea opioid abuse module
* compose.include[=].concept[+].code = #1149222004 // "Overdose (disorder)"
* compose.include[=].concept[+].code = #56876005 // "Drug rehabilitation and detoxification (regime/therapy)"
* compose.include[=].concept[+].code = #60112009 // "Drug addiction counseling (procedure)"
* compose.include[=].concept[+].code = #61480009 // "Drug detoxification (regime/therapy)"
* compose.include[=].concept[+].code = #266707007 // "Drug addiction therapy (regime/therapy)"
* compose.include[=].concept[+].code = #52052004 // "Rehabilitation therapy (regime/therapy)"
* compose.include[=].concept[+].code = #6525002 // "Dependent drug abuse (disorder)"
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #352364  // "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet"
* compose.include[=].concept[+].code = #1049221 // "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* compose.include[=].concept[+].code = #856987 // "Acetaminophen 300 MG / HYDROcodone Bitartrate 5 MG Oral Tablet"
* compose.include[=].concept[+].code = #1860154 // "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #F11.11  // "Opioid abuse, in remission"
* compose.include[=].concept[+].code = #F11.1 // "Opioid abuse" //10/23/2025 - in leap-sls code for OUD

* expansion.timestamp = "2025-05-08T08:00:00-05:00" // last time leap-sls codes were edited
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #425741009  // "Buprenorphine/naloxone"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #5602001  // "Opioid abuse"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #145121000119106 // "Intravenous nondependent opioid abuse"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #1149222004 // "Overdose (disorder)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #56876005 // "Drug rehabilitation and detoxification (regime/therapy)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #60112009 // "Drug addiction counseling (procedure)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #61480009 // "Drug detoxification (regime/therapy)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #266707007 // "Drug addiction therapy (regime/therapy)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #52052004 // "Rehabilitation therapy (regime/therapy)"
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #6525002 // "Dependent drug abuse (disorder)"
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #352364  // "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet"
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #1049221 // "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #856987 // "Acetaminophen 300 MG / HYDROcodone Bitartrate 5 MG Oral Tablet"
* expansion.contains[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* expansion.contains[=].code = #1860154 // "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #F11.11  // "Opioid abuse, in remission"
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #F11.1 // "Opioid abuse"

Instance: ShiftSlsHallucinogenCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - SHIFT SLS Hallucinogen Codes"
Description: """
SHIFT SLS set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: SUD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "ShiftSlsHallucinogenCodes"
* url = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsHallucinogenCodes"
* title = "ValueSet - SHIFT SLS Hallucinogen Codes"
* description = """
SHIFT SLS set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: SUD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUD
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#42CFRPart2
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH
* compose.inactive = true

* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #F16.20 // "Hallucinogen dependence, uncomplicated" 
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #724713006  // "Harmful use of ketamine" 

* expansion.timestamp = "2025-03-31T08:00:00-05:00" // last time leap-sls codes were edited
* expansion.contains[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* expansion.contains[=].code = #F16.20 // "Hallucinogen dependence, uncomplicated" 
* expansion.contains[+].system = "http://snomed.info/sct"
* expansion.contains[=].code = #724713006  // "Harmful use of ketamine" 


ValueSet: ShiftSlsSensitiveCodes
Title: "ValueSet - SHIFT SLS Sensitive Kind Codes"
Description: "SHIFT SLS set of codes representing kinds of sensitive information requiring special privacy protections"
* ^experimental = false
* ^version = "0.1.0"
* codes from valueset ShiftSlsHallucinogenCodes
* codes from valueset ShiftSlsOpioidCodes
* codes from valueset ShiftSlsBHCodes
* codes from valueset ShiftSlsSEXCodes
* codes from valueset ShiftSlsAbortionCodes
* codes from valueset ShiftSlsSTDCodes
* codes from valueset ShiftSlsHIVCodes
* codes from valueset ShiftSlsGDISCodes
* codes from valueset ShiftSlsSDVCodes
* codes from valueset ShiftSlsPSYTHPNCodes



Instance: ShiftSlsBundledSensitiveKindCodes
InstanceOf: Bundle
Usage: #example
Title: "Bundle - SHIFT SLS Sensitive Kind Codes"
Description: "SHIFT SLS Bundle containing ValueSets representing kinds of sensitive information requiring special privacy protections"
* type = #collection
* entry[+].resource = ShiftSlsHallucinogenCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsHallucinogenCodes"
* entry[+].resource = ShiftSlsOpioidCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsOpioidCodes"
* entry[+].resource = ShiftSlsBHCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsBHCodes"
* entry[+].resource = ShiftSlsSEXCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSEXCodes"
* entry[+].resource = ShiftSlsAbortionCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsAbortionCodes"
* entry[+].resource = ShiftSlsSTDCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSTDCodes"
* entry[+].resource = ShiftSlsHIVCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsHIVCodes"
* entry[+].resource = ShiftSlsGDISCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsGDISCodes"
* entry[+].resource = ShiftSlsSDVCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSDVCodes"
* entry[+].resource = ShiftSlsPSYTHPNCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsPSYTHPNCodes"
//* entry[+].resource = ShiftSlsSensitiveCodes
//* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/SLS-ValueSets/ValueSet/ShiftSlsSensitiveCodes"

