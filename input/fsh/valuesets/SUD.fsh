//------------------------------------------------------------------------------
// SUBSTANCE USE DISORDER (SUD) CODES
// combined medication, conditions, and observations; 
// as it does not matter where these codes show up they would indicate the sensitivity kind SUD
//------------------------------------------------------------------------------
ValueSet: ExampleSubstanceUseCodes
Title: "ValueSet - Example Substance Use Codes"
Description: """
Example set of codes representing substance use requiring special privacy protections. 
Inclusive of medications, conditions, and observations; as no matter where these codes show up they would indicate the sensitivity kind SUD.

Identified as: SUD
"""
* ^experimental = false
* codes from valueset ExampleOpioidCodes
* codes from valueset ExampleHallucinogenCodes
* http://snomed.info/sct#444175001  // "Cognitive behavioral therapy record"

ValueSet: ExampleOpioidCodes
Title: "ValueSet - Example Opioid Codes"
Description: """
Example set of codes representing opioid abuse requiring special privacy protections.

Identified as: local#opioid
"""
* ^experimental = false
* http://snomed.info/sct#425741009  // "Buprenorphine/naloxone"
* http://www.nlm.nih.gov/research/umls/rxnorm#352364  // "Buprenorphine 8 MG / Naloxone 2 MG Sublingual Tablet"
* http://hl7.org/fhir/sid/icd-10-cm#F11.11  // "Opioid abuse, in remission"
* http://snomed.info/sct#5602001  // "Opioid abuse"
* http://hl7.org/fhir/sid/icd-10-cm#F11.1 // "Opioid abuse" //10/23/2025 - in leap-sls code for OUD
* http://snomed.info/sct#145121000119106 // "Intravenous nondependent opioid abuse" //10/23/2025 - in leap-sls code for OUD
// The following codes added from Synthea opioid abuse module
* http://snomed.info/sct#1149222004 // "Overdose (disorder)"
* http://www.nlm.nih.gov/research/umls/rxnorm#1049221 // "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* http://www.nlm.nih.gov/research/umls/rxnorm#856987 // "Acetaminophen 300 MG / HYDROcodone Bitartrate 5 MG Oral Tablet"
* http://www.nlm.nih.gov/research/umls/rxnorm#1860154 // "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* http://snomed.info/sct#56876005 // "Drug rehabilitation and detoxification (regime/therapy)"
* http://snomed.info/sct#60112009 // "Drug addiction counseling (procedure)"
* http://snomed.info/sct#61480009 // "Drug detoxification (regime/therapy)"
* http://snomed.info/sct#266707007 // "Drug addiction therapy (regime/therapy)"
* http://snomed.info/sct#52052004 // "Rehabilitation therapy (regime/therapy)"
* http://snomed.info/sct#6525002 // "Dependent drug abuse (disorder)"

ValueSet: ExampleHallucinogenCodes
Title: "ValueSet - Example Hallucinogen Codes"
Description: """
Example set of codes representing hallucinogen abuse requiring special privacy protections

Identified as: local#hallucinogen and local#bh_substances/SUD
"""
* ^experimental = false
* http://hl7.org/fhir/sid/icd-10-cm#F16.20 // "Hallucinogen dependence, uncomplicated" // 10/23/2025 - in leap-sls code for HALL
* http://snomed.info/sct#724713006  // "Harmful use of ketamine" // 10/23/2025 - in leap-sls code for HALL

CodeSystem: LocalSensitiveKindCodes
Title: "CodeSystem - Local Sensitive Kind Codes"
Description: "Local CodeSystem for Sensitive Kind Codes used in meta.security labels"
* ^experimental = false
* ^caseSensitive = false
* #opioid "Opioid Abuse" "Opioid Abuse"
* #hallucinogen "Hallucinogen Abuse" "Hallucinogen Abuse"
