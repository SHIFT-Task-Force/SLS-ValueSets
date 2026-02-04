

ValueSet: LeapSlsSensitiveCodes
Title: "ValueSet - Example Sensitive Kind Codes"
Description: "Example set of codes representing kinds of sensitive information requiring special privacy protections"
* ^experimental = false
* ^version = "0.1.0"
* codes from valueset LeapSlsBehavioralHealthCodes
* codes from valueset LeapSlsSexualityAndReproductiveHealthCodes
* codes from valueset LeapSlsSubstanceUseCodes

//------------------------------------------------------------------------------
// BEHAVIORAL HEALTH (BH) CODES
//------------------------------------------------------------------------------
Instance: LeapSlsBehavioralHealthCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Example Behavioral Health Codes"
Description: """
Example set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsBehavioralHealthCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsBehavioralHealthCodes"
* title = "ValueSet - Example Behavioral Health Codes"
* description = """
Example set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH "behavioral health information sensitivity"
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsHallucinogenCodes"

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
* compose.include[=].concept[+].code = #5602001  // "Opioid abuse"
* compose.include[=].concept[+].code = #444175001  // "Cognitive behavioral therapy record" // JFM 10/23/2025 - in leap-sls code for PSY

// ICD-10-CM Conditions
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #F33.1  // "Major depressive disorder, recurrent, moderate"
* compose.include[=].concept[+].code = #F60.5  // "Obsessive-compulsive personality disorder"
* compose.include[=].concept[+].code = #F11.11  // "Opioid abuse, in remission"

//------------------------------------------------------------------------------
// SEXUALITY & REPRODUCTIVE HEALTH (SEX) CODES
//------------------------------------------------------------------------------
Instance: LeapSlsSexualityAndReproductiveHealthCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Example Sexuality and Reproductive Health Codes"
Description: """
Example set of codes representing sexuality and reproductive health requiring special privacy protections

Identified as: v3-ActCode#SEX
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsSexualityAndReproductiveHealthCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSexualityAndReproductiveHealthCodes"
* title = "ValueSet - Example Sexuality and Reproductive Health Codes"
* description = """
Example set of codes representing sexuality and reproductive health requiring special privacy protections

Identified as: v3-ActCode#SEX
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SEX "sexuality and reproductive health information sensitivity"

//------------------------------------------------------------------------------
// SUBSTANCE USE DISORDER (SUD) CODES
// combined medication, conditions, and observations; 
// as it does not matter where these codes show up they would indicate the sensitivity kind SUD
//------------------------------------------------------------------------------
Instance: LeapSlsSubstanceUseCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Example Substance Use Codes"
Description: """
Example set of codes representing substance use requiring special privacy protections. 
Inclusive of medications, conditions, and observations; as no matter where these codes show up they would indicate the sensitivity kind SUD.

Identified as: SUD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsSubstanceUseCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSubstanceUseCodes"
* title = "ValueSet - Example Substance Use Codes"
* description = """
Example set of codes representing substance use requiring special privacy protections. 
Inclusive of medications, conditions, and observations; as no matter where these codes show up they would indicate the sensitivity kind SUD.

Identified as: SUD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUD "substance use disorder information sensitivity"
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsOpioidCodes"
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsHallucinogenCodes"
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #444175001  // "Cognitive behavioral therapy record"

Instance: LeapSlsOpioidCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Example Opioid Codes"
Description: """
Example set of codes representing opioid abuse requiring special privacy protections.

Identified as: local#opioid
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsOpioidCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsOpioidCodes"
* title = "ValueSet - Example Opioid Codes"
* description = """
Example set of codes representing opioid abuse requiring special privacy protections.

Identified as: local#opioid
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = LocalSensitiveKindCodes#opioid
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

Instance: LeapSlsHallucinogenCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Example Hallucinogen Codes"
Description: """
Example set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: local#hallucinogen and local#bh_substances/SUD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsHallucinogenCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsHallucinogenCodes"
* title = "ValueSet - Example Hallucinogen Codes"
* description = """
Example set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: local#hallucinogen and local#bh_substances/SUD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = LocalSensitiveKindCodes#hallucinogen
* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #F16.20 // "Hallucinogen dependence, uncomplicated" // 10/23/2025 - in leap-sls code for HALL
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #724713006  // "Harmful use of ketamine" // 10/23/2025 - in leap-sls code for HALL

CodeSystem: LocalSensitiveKindCodes
Title: "CodeSystem - Local Sensitive Kind Codes"
Description: "Local CodeSystem for Sensitive Kind Codes used in meta.security labels"
* ^experimental = false
* ^caseSensitive = false
* #opioid "Opioid Abuse" "Opioid Abuse"
* #hallucinogen "Hallucinogen Abuse" "Hallucinogen Abuse"




Instance: LeapSlsBundledSensitiveKindCodes
InstanceOf: Bundle
Usage: #example
Title: "Bundle - Example Sensitive Kind Codes"
Description: "Example Bundle containing ValueSets representing kinds of sensitive information requiring special privacy protections"
* type = #collection
* entry[+].resource = LeapSlsSensitiveCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSensitiveCodes"
* entry[+].resource = LeapSlsBehavioralHealthCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsBehavioralHealthCodes"
* entry[+].resource = LeapSlsSexualityAndReproductiveHealthCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSexualityAndReproductiveHealthCodes"
* entry[+].resource = LeapSlsSubstanceUseCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSubstanceUseCodes"
* entry[+].resource = LeapSlsHallucinogenCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsHallucinogenCodes"
* entry[+].resource = LeapSlsOpioidCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsOpioidCodes"

