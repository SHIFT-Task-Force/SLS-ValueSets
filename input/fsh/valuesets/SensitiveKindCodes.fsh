

//------------------------------------------------------------------------------
// BEHAVIORAL HEALTH (BH) CODES
//------------------------------------------------------------------------------
Instance: LeapSlsBehavioralHealthCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Leap SLS Behavioral Health Codes"
Description: """
Leap SLS set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsBehavioralHealthCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsBehavioralHealthCodes"
* title = "ValueSet - Leap SLS Behavioral Health Codes"
* description = """
Leap SLS set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH

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

//------------------------------------------------------------------------------
// SEXUALITY & REPRODUCTIVE HEALTH (SEX) CODES
//------------------------------------------------------------------------------
Instance: LeapSlsSexualityAndReproductiveHealthCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Leap SLS Sexuality and Reproductive Health Codes"
Description: """
Leap SLS set of codes representing sexuality and reproductive health requiring special privacy protections

Identified as: v3-ActCode#SEX
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsSexualityAndReproductiveHealthCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSexualityAndReproductiveHealthCodes"
* title = "ValueSet - Leap SLS Sexuality and Reproductive Health Codes"
* description = """
Leap SLS set of codes representing sexuality and reproductive health requiring special privacy protections

Identified as: v3-ActCode#SEX
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SEX

// bring this over just to have something in this valueSet
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #72892002 // "Normal pregnancy (finding)"

//------------------------------------------------------------------------------
// PSYCHIATRIC NOTES (PSYTHPN, BH) CODES
// combined medication, conditions, and observations; 
// as it does not matter where these codes show up they would indicate the sensitivity kind SUD
//------------------------------------------------------------------------------
Instance: LeapSlsPsychiatricNotesCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Leap SLS Psychiatric Notes Use Codes"
Description: """
Leap SLS set of codes representing psychiatric notes requiring special privacy protections. 

Identified as: PSYTHPN, BH
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsPsychiatricNotesCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsPsychiatricNotesCodes"
* title = "ValueSet - Leap SLS Psychiatric Notes Use Codes"
* description = """
Leap SLS set of codes representing psychiatric notes requiring special privacy protections. 

Identified as: PSYTHPN, BH
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#PSYTHPN
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH

* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #444175001  // "Cognitive behavioral therapy record"

Instance: LeapSlsOpioidCodes
InstanceOf: ValueSet
Usage: #definition
Title: "ValueSet - Leap SLS Opioid Codes"
Description: """
Leap SLS set of codes representing opioid abuse requiring special privacy protections.

Identified as: v3-ActCode#OPIOIDUD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsOpioidCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsOpioidCodes"
* title = "ValueSet - Leap SLS Opioid Codes"
* description = """
Leap SLS set of codes representing opioid abuse requiring special privacy protections.

Identified as: v3-ActCode#OPIOIDUD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#OPIOIDUD
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUD
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#42CFRPart2
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
Title: "ValueSet - Leap SLS Hallucinogen Codes"
Description: """
Leap SLS set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: SUD
"""
* status = #active
* experimental = false
* version = "0.1.0"
* name = "LeapSlsHallucinogenCodes"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsHallucinogenCodes"
* title = "ValueSet - Leap SLS Hallucinogen Codes"
* description = """
Leap SLS set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: SUD
"""
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUD
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#42CFRPart2
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH

* compose.include[+].system = "http://hl7.org/fhir/sid/icd-10-cm"
* compose.include[=].concept[+].code = #F16.20 // "Hallucinogen dependence, uncomplicated" // 10/23/2025 - in leap-sls code for HALL
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #724713006  // "Harmful use of ketamine" // 10/23/2025 - in leap-sls code for HALL



ValueSet: LeapSlsSensitiveCodes
Title: "ValueSet - Leap SLS Sensitive Kind Codes"
Description: "Leap SLS set of codes representing kinds of sensitive information requiring special privacy protections"
* ^experimental = false
* ^version = "0.1.0"
* codes from valueset LeapSlsHallucinogenCodes
* codes from valueset LeapSlsOpioidCodes
* codes from valueset LeapSlsBehavioralHealthCodes
* codes from valueset LeapSlsSexualityAndReproductiveHealthCodes
* codes from valueset LeapSlsPsychiatricNotesCodes



Instance: LeapSlsBundledSensitiveKindCodes
InstanceOf: Bundle
Usage: #example
Title: "Bundle - Leap SLS Sensitive Kind Codes"
Description: "Leap SLS Bundle containing ValueSets representing kinds of sensitive information requiring special privacy protections"
* type = #collection
* entry[+].resource = LeapSlsHallucinogenCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsHallucinogenCodes"
* entry[+].resource = LeapSlsOpioidCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsOpioidCodes"
* entry[+].resource = LeapSlsBehavioralHealthCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsBehavioralHealthCodes"
* entry[+].resource = LeapSlsSexualityAndReproductiveHealthCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSexualityAndReproductiveHealthCodes"
* entry[+].resource = LeapSlsPsychiatricNotesCodes
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsPsychiatricNotesCodes"
//* entry[+].resource = LeapSlsSensitiveCodes
//* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/LeapSlsSensitiveCodes"

