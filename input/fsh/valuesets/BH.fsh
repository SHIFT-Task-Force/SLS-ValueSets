
//------------------------------------------------------------------------------
// BEHAVIORAL HEALTH (BH) CODES
//------------------------------------------------------------------------------
ValueSet: ExampleBehavioralHealthCodes
Title: "ValueSet - Example Behavioral Health Codes"
Description: """
Example set of codes representing behavioral health conditions requiring special privacy protections

Identified as: v3-ActCode#BH
"""
* ^experimental = false
* codes from valueset ExampleHallucinogenCodes

// SNOMED CT BH Observation Codes
* http://snomed.info/sct#720433000  // "PHQ-9 depression screening instrument" // JFM 10/23/2025 - in leap-sls code for PSY

// CPT BH Assessment/Procedure Codes
* http://www.ama-assn.org/go/cpt#96127  // "Brief emotional/behavioral assessment"

// LOINC ASSESSMENT INSTRUMENT CODES
* http://loinc.org#44249-1  // "PHQ-9 quick depression assessment panel" // JFM 10/23/2025 - in leap-sls code for PSY
* http://loinc.org#89204-2  // "Patient Health Questionnaire-9: Depression" // JFM 10/23/2025 - in leap-sls code for PSY

// Medications
* http://www.nlm.nih.gov/research/umls/rxnorm#315952  // "Fluoxetine 20 MG Oral Capsule" // 10/23/2025 - in leap-sls code for BH
* http://snomed.info/sct#372767007  // "Fluoxetine (substance)" // 10/23/2025 - in leap-sls code for BH 

// Conditions
* http://hl7.org/fhir/sid/icd-10-cm#F33.1  // "Major depressive disorder, recurrent, moderate"
* http://hl7.org/fhir/sid/icd-10-cm#F60.5  // "Obsessive-compulsive personality disorder"
* http://hl7.org/fhir/sid/icd-10-cm#F11.11  // "Opioid abuse, in remission"
* http://snomed.info/sct#310496002  // "Major depressive disorder, recurrent, moderate"
* http://snomed.info/sct#1376001  // "Obsessive-compulsive personality disorder"
* http://snomed.info/sct#5602001  // "Opioid abuse"
* http://www.nlm.nih.gov/research/umls/rxnorm#352364  // "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet"
* http://snomed.info/sct#444175001  // "Cognitive behavioral therapy record" // JFM 10/23/2025 - in leap-sls code for PSY



