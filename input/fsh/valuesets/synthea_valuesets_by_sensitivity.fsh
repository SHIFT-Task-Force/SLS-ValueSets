// --- Synthea ValueSets for Sensitive Health Topics Only (Individual and Grouped) ---
// Generated from local directory: ../../synthea/src/main/resources/modules

Instance: SyntheaAttentionDeficitDisorderVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for attention_deficit_disorder"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: attention_deficit_disorder."
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaAttentionDeficitDisorderVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaAttentionDeficitDisorderVS"
* title = "Synthea Codes for attention_deficit_disorder"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: attention_deficit_disorder."
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#PSY
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #192127007 // "Child attention deficit disorder (disorder)"
* compose.include[=].concept[+].code = #185347001 // "Encounter for problem (procedure)"
* compose.include[=].concept[+].code = #386522008 // "Overactivity/inattention behavior management (regime/therapy)"
* compose.include[=].concept[+].code = #228557008 // "Cognitive and behavioral therapy (regime/therapy)"
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #1091392 // "Methylphenidate Hydrochloride 20 MG Oral Tablet"
* compose.include[=].concept[+].code = #608139 // "atomoxetine 100 MG Oral Capsule"

Instance: SyntheaCerebralPalsyVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for cerebral_palsy"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: cerebral_palsy."
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaCerebralPalsyVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCerebralPalsyVS"
* title = "Synthea Codes for cerebral_palsy"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: cerebral_palsy."
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#DIS 
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #1259900009 // "Fitting of intraoral appliance (procedure)"
* compose.include[=].concept[+].code = #128188000 // "Cerebral palsy (disorder)"
* compose.include[=].concept[+].code = #108219001 // "Physician visit with evaluation AND/OR management service (procedure)"
* compose.include[=].concept[+].code = #311834001 // "Fiberoptic endoscopic evaluation of swallowing (procedure)"
* compose.include[=].concept[+].code = #288959006 // "Unable to swallow saliva (finding)"
* compose.include[=].concept[+].code = #182836005 // "Review of medication (procedure)"
* compose.include[=].concept[+].code = #717778001 // "Mouth care (regime/therapy)"
* compose.include[=].concept[+].code = #229069003 // "Posture training (procedure)"
* compose.include[=].concept[+].code = #166001 // "Behavioral therapy (regime/therapy)"
* compose.include[=].concept[+].code = #311707005 // "Oral motor exercises (regime/therapy)"
* compose.include[=].concept[+].code = #312421008 // "Radionuclide imaging - action (qualifier value)"
* compose.include[=].concept[+].code = #62718007 // "Dribbling from mouth (finding)"
* compose.include[=].concept[+].code = #173521004 // "Transposition of submandibular duct (procedure)"
* compose.include[=].concept[+].code = #47227006 // "Excision of submandibular gland (procedure)"
* compose.include[=].concept[+].code = #302351005 // "Ligation of salivary duct (procedure)"
* compose.include[=].concept[+].code = #53827007 // "Excessive salivation (disorder)"
* compose.include[=].concept[+].code = #390906007 // "Follow-up encounter (procedure)"
* compose.include[=].concept[+].code = #267064002 // "Retention of urine (disorder)"
* compose.include[=].concept[+].code = #14760008 // "Constipation (finding)"
* compose.include[=].concept[+].code = #389082000 // "Constipation care (regime/therapy)"
* compose.include[=].concept[+].code = #386490009 // "Urinary retention care (regime/therapy)"
* compose.include[=].concept[+].code = #40274000 // "General outpatient clinic admission (procedure)"
* compose.include[=].concept[+].code = #183646003 // "Postoperative visit (finding)"
* compose.include[=].concept[+].code = #15802004 // "Dystonia (disorder)"
* compose.include[=].concept[+].code = #22253000 // "Pain (finding)"
* compose.include[=].concept[+].code = #398152000 // "Poor muscle tone (finding)"
* compose.include[=].concept[+].code = #221360009 // "Spasticity (finding)"
* compose.include[=].concept[+].code = #64859006 // "Osteoporosis (disorder)"
* compose.include[=].concept[+].code = #84757009 // "Epilepsy (disorder)"
* compose.include[=].concept[+].code = #110359009 // "Intellectual disability (disorder)"
* compose.include[=].concept[+].code = #235595009 // "Gastroesophageal reflux disease (disorder)"
* compose.include[=].concept[+].code = #371883000 // "Outpatient procedure (procedure)"
* compose.include[=].concept[+].code = #404909007 // "Injection of botulinum toxin (procedure)"
* compose.include[=].concept[+].code = #241149003 // "Videofluoroscopy swallow (procedure)"
* compose.include[=].concept[+].code = #182777000 // "Monitoring of patient (regime/therapy)"
* compose.include[=].concept[+].code = #233604007 // "Pneumonia (disorder)"
* compose.include[=].concept[+].code = #157265008 // "Dislocation of hip joint (disorder)"
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #1437975 // "Glycopyrrolate 1.5 MG Oral Tablet [Glycate]"
* compose.include[=].concept[+].code = #351875 // "72 HR Scopolamine 0.0139 MG/HR Transdermal System [Transdermal Scop]"
* compose.include[=].concept[+].code = #885219 // "Benztropine mesylate 0.5 MG Oral Tablet"
* compose.include[=].concept[+].code = #905269 // "Trihexyphenidyl Hydrochloride 2 MG Oral Tablet"
* compose.include[=].concept[+].code = #1789958 // "Dysport botulinum toxin A 300 UNT Injection"
* compose.include[=].concept[+].code = #860182 // "rimabotulinumtoxinB 5000 UNT/ML [Myobloc]"
* compose.include[=].concept[+].code = #1190766 // "atropine sulfate 0.31 MG/ML Ophthalmic Solution (used Sublingual)"

Instance: SyntheaCysticFibrosisVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for cystic_fibrosis"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: cystic_fibrosis.

v3-ActCode#GDIS"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaCysticFibrosisVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCysticFibrosisVS"
* title = "Synthea Codes for cystic_fibrosis"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: cystic_fibrosis.\n\nv3-ActCode#GDIS"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#GDIS
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #190905008 // "Cystic fibrosis (disorder)"
* compose.include[=].concept[+].code = #67799006 // "Cystic fibrosis, prenatal detection (procedure)"
* compose.include[=].concept[+].code = #86964003 // "Cystic fibrosis sweat test (procedure)"
* compose.include[=].concept[+].code = #444260001 // "Screen for 20 common genetic mutations of cystic fibrosis using amplification refractory mutation system polymerase chain reaction assay technique (procedure)"
* compose.include[=].concept[+].code = #206523001 // "Meconium ileus (disorder)"
* compose.include[=].concept[+].code = #61919008 // "Giving patient an enema (procedure)"
* compose.include[=].concept[+].code = #707418001 // "Male infertility due to cystic fibrosis (disorder)"
* compose.include[=].concept[+].code = #707577004 // "Female infertility due to cystic fibrosis (disorder)"
* compose.include[=].concept[+].code = #60151004 // "Neonatal screening (procedure)"
* compose.include[=].concept[+].code = #734163000 // "Care plan (record artifact)"
* compose.include[=].concept[+].code = #185349003 // "Encounter for check up (procedure)"
* compose.include[=].concept[+].code = #399208008 // "Plain X-ray of chest (procedure)"
* compose.include[=].concept[+].code = #104173009 // "Microbial culture of sputum (procedure)"
* compose.include[=].concept[+].code = #427089005 // "Diabetes mellitus due to cystic fibrosis (disorder)"
* compose.include[=].concept[+].code = #113076002 // "Glucose tolerance test (procedure)"
* compose.include[=].concept[+].code = #703040004 // "Agreeing on diabetes care plan (procedure)"
* compose.include[=].concept[+].code = #232657004 // "Single lung transplant (procedure)"
* compose.include[=].concept[+].code = #82078001 // "Collection of blood specimen for laboratory (procedure)"
* compose.include[=].concept[+].code = #23426006 // "Measurement of respiratory function (procedure)"
* compose.include[=].concept[+].code = #11218009 // "Infection caused by Pseudomonas aeruginosa (disorder)"
* compose.include[=].concept[+].code = #406602003 // "Infection caused by Staphylococcus aureus (disorder)"
* compose.include[=].concept[+].code = #448813005 // "Sepsis caused by Pseudomonas (disorder)"
* compose.include[=].concept[+].code = #50849002 // "Emergency room admission (procedure)"
* compose.include[=].concept[+].code = #14152002 // "Intravenous infusion (procedure)"
* compose.include[=].concept[+].code = #281790008 // "Intravenous antibiotic therapy (procedure)"
* compose.include[=].concept[+].code = #448417001 // "Sepsis caused by Staphylococcus aureus (disorder)"
* compose.include[=].concept[+].code = #48387007 // "Incision of trachea (procedure)"
* compose.include[=].concept[+].code = #65710008 // "Acute respiratory failure (disorder)"
* compose.include[=].concept[+].code = #16602611000119108 // "Awaiting transplantation of lung (situation)"
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #198767 // "Pancreatin 600 MG Oral Tablet"
* compose.include[=].concept[+].code = #1243052 // "Kalydeco 150 MG Oral Tablet"
* compose.include[=].concept[+].code = #205532 // "Pulmozyme (Dornase Alfa)"
* compose.include[=].concept[+].code = #1665227 // "20 ML Ciprofloxacin 10 MG/ML Injection"
* compose.include[=].concept[+].code = #313572 // "Vancomycin 50 MG/ML Injectable Solution"

Instance: SyntheaDementiaVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for dementia"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: dementia.

v3-ActCode#COGN"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaDementiaVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaDementiaVS"
* title = "Synthea Codes for dementia"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: dementia.\n\nv3-ActCode#COGN"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#COGN
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #26929004 // "Alzheimer's disease (disorder)"
* compose.include[=].concept[+].code = #230265002 // "Familial Alzheimer's disease of early onset (disorder)"
* compose.include[=].concept[+].code = #386257007 // "Dementia management (regime/therapy)"
* compose.include[=].concept[+].code = #281036007 // "Follow-up consultation (procedure)"
* compose.include[=].concept[+].code = #233604007 // "Pneumonia (disorder)"
* compose.include[=].concept[+].code = #4525004 // "Emergency department patient visit (procedure)"
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #72106-8 // "Total score [MMSE]"
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #310436 // "Galantamine 4 MG Oral Tablet"
* compose.include[=].concept[+].code = #997223 // "Donepezil hydrochloride 10 MG Oral Tablet"
* compose.include[=].concept[+].code = #313185 // "Tacrine 10 MG Oral Capsule"
* compose.include[=].concept[+].code = #1599803 // "24 HR Donepezil hydrochloride 10 MG / Memantine hydrochloride 28 MG Extended Release Oral Capsule"
* compose.include[=].concept[+].code = #996740 // "Memantine hydrochloride 2 MG/ML Oral Solution"
* compose.include[=].concept[+].code = #1100184 // "Donepezil hydrochloride 23 MG Oral Tablet"

Instance: SyntheaOpioidAddictionVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for opioid_addiction"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: opioid_addiction.

v3-ActCode#OPIOIDUD"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaOpioidAddictionVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaOpioidAddictionVS"
* title = "Synthea Codes for opioid_addiction"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: opioid_addiction.\n\nv3-ActCode#OPIOIDUD"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#OPIOIDUD 
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #196416002 // "Impacted molars (disorder)"
* compose.include[=].concept[+].code = #50849002 // "Emergency room admission (procedure)"
* compose.include[=].concept[+].code = #65546002 // "Extraction of wisdom tooth (procedure)"
* compose.include[=].concept[+].code = #82423001 // "Chronic pain (finding)"
* compose.include[=].concept[+].code = #183452005 // "Emergency hospital admission (procedure)"
* compose.include[=].concept[+].code = #124171000119105 // "Chronic intractable migraine without aura (disorder)"
* compose.include[=].concept[+].code = #56876005 // "Drug rehabilitation and detoxification (regime/therapy)"
* compose.include[=].concept[+].code = #185347001 // "Encounter for problem (procedure)"
* compose.include[=].concept[+].code = #1149222004 // "Overdose (disorder)"
* compose.include[=].concept[+].code = #734163000 // "Care plan (record artifact)"
* compose.include[=].concept[+].code = #52052004 // "Rehabilitation therapy (regime/therapy)"
* compose.include[=].concept[+].code = #6525002 // "Dependent drug abuse (disorder)"
* compose.include[+].system = "http://loinc.org"
* compose.include[=].concept[+].code = #72514-3 // "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
* compose.include[+].system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* compose.include[=].concept[+].code = #856987 // "Acetaminophen 300 MG / HYDROcodone Bitartrate 5 MG Oral Tablet"
* compose.include[=].concept[+].code = #1860154 // "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* compose.include[=].concept[+].code = #1049221 // "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"

Instance: SyntheaPregnancyVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for pregnancy"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: pregnancy.

v3-ActCode#PREGNANT"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaPregnancyVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaPregnancyVS"
* title = "Synthea Codes for pregnancy"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: pregnancy.\n\nv3-ActCode#PREGNANT"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#PREGNANT
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #72892002 // "Normal pregnancy (finding)"
* compose.include[=].concept[+].code = #424441002 // "Prenatal initial visit (regime/therapy)"
* compose.include[=].concept[+].code = #252160004 // "Standard pregnancy test (procedure)"
* compose.include[=].concept[+].code = #169230002 // "Ultrasound scan for fetal viability (procedure)"
* compose.include[=].concept[+].code = #134435003 // "Routine antenatal care (regime/therapy)"
* compose.include[=].concept[+].code = #274804006 // "Evaluation of uterine fundal height (procedure)"
* compose.include[=].concept[+].code = #225158009 // "Auscultation of the fetal heart (procedure)"
* compose.include[=].concept[+].code = #44608003 // "Blood group typing (procedure)"
* compose.include[=].concept[+].code = #104091002 // "Hemogram, automated, with red blood cells, white blood cells, hemoglobin, hematocrit, indices, platelet count, and manual white blood cell differential (procedure)"
* compose.include[=].concept[+].code = #47758006 // "Hepatitis B surface antigen measurement (procedure)"
* compose.include[=].concept[+].code = #31676001 // "Human immunodeficiency virus antigen test (procedure)"
* compose.include[=].concept[+].code = #310861008 // "Chlamydia antigen test (procedure)"
* compose.include[=].concept[+].code = #165829005 // "Gonorrhea infection titer test (procedure)"
* compose.include[=].concept[+].code = #269828009 // "Syphilis infectious titer test (procedure)"
* compose.include[=].concept[+].code = #117010004 // "Urine culture (procedure)"
* compose.include[=].concept[+].code = #90226004 // "Cytopathology procedure, preparation of smear, genital source (procedure)"
* compose.include[=].concept[+].code = #395123002 // "Urine screening test for diabetes (procedure)"
* compose.include[=].concept[+].code = #104375008 // "Hepatitis C antibody, confirmatory test (procedure)"
* compose.include[=].concept[+].code = #314098000 // "Rubella screening test (procedure)"
* compose.include[=].concept[+].code = #104326007 // "Measurement of Varicella-zoster virus antibody (procedure)"
* compose.include[=].concept[+].code = #28163009 // "Skin test for tuberculosis, Tine test (procedure)"
* compose.include[=].concept[+].code = #60218003 // "Urinalysis, protein, qualitative (procedure)"
* compose.include[=].concept[+].code = #5880005 // "Physical examination procedure (procedure)"
* compose.include[=].concept[+].code = #47200007 // "High risk pregnancy (finding)"
* compose.include[=].concept[+].code = #424619006 // "Prenatal visit (regime/therapy)"
* compose.include[=].concept[+].code = #443529005 // "Detection of chromosomal aneuploidy in prenatal amniotic fluid specimen using fluorescence in situ hybridization screening technique (procedure)"
* compose.include[=].concept[+].code = #271442007 // "Fetal anatomy study (procedure)"
* compose.include[=].concept[+].code = #275833003 // "Alpha-fetoprotein test - antenatal (procedure)"
* compose.include[=].concept[+].code = #169673001 // "Antenatal RhD antibody screening (procedure)"
* compose.include[=].concept[+].code = #51116004 // "Passive immunization (procedure)"
* compose.include[=].concept[+].code = #399014008 // "Administration of vaccine product containing only Bordetella pertussis and Clostridium tetani and Corynebacterium diphtheriae antigens (procedure)"
* compose.include[=].concept[+].code = #268556000 // "Urine screening for glucose (procedure)"
* compose.include[=].concept[+].code = #398254007 // "Pre-eclampsia (disorder)"
* compose.include[=].concept[+].code = #198992004 // "Eclampsia in pregnancy (disorder)"
* compose.include[=].concept[+].code = #118001005 // "Streptococcus pneumoniae group B antigen assay (procedure)"
* compose.include[=].concept[+].code = #183460006 // "Obstetric emergency hospital admission (procedure)"
* compose.include[=].concept[+].code = #31208007 // "Medical induction of labor (procedure)"
* compose.include[=].concept[+].code = #18946005 // "Epidural anesthesia (procedure)"
* compose.include[=].concept[+].code = #237001001 // "Augmentation of labor (procedure)"
* compose.include[=].concept[+].code = #85548006 // "Episiotomy (procedure)"
* compose.include[=].concept[+].code = #236974004 // "Instrumental delivery (procedure)"
* compose.include[=].concept[+].code = #177157003 // "Spontaneous breech delivery (procedure)"
* compose.include[=].concept[+].code = #386216000 // "Human parturition, function (observable entity)"
* compose.include[=].concept[+].code = #367494004 // "Premature birth of newborn (finding)"
* compose.include[=].concept[+].code = #11466000 // "Cesarean section (procedure)"
* compose.include[=].concept[+].code = #19169002 // "Miscarriage in first trimester (disorder)"
* compose.include[=].concept[+].code = #85116003 // "Miscarriage in second trimester (disorder)"
* compose.include[=].concept[+].code = #156073000 // "Complete miscarriage (disorder)"
* compose.include[=].concept[+].code = #35999006 // "Blighted ovum (disorder)"
* compose.include[=].concept[+].code = #305408004 // "Admission to surgical department (procedure)"
* compose.include[=].concept[+].code = #236931002 // "Methotrexate injection into tubal pregnancy (procedure)"
* compose.include[=].concept[+].code = #445912000 // "Excision of fallopian tube and surgical removal of ectopic pregnancy (procedure)"
* compose.include[=].concept[+].code = #267253006 // "Fetus with chromosomal abnormality (disorder)"
* compose.include[=].concept[+].code = #37849005 // "Congenital uterine anomaly (disorder)"
* compose.include[=].concept[+].code = #609496007 // "Complication occurring during pregnancy (disorder)"
* compose.include[=].concept[+].code = #171207006 // "Depression screening (procedure)"
* compose.include[=].concept[+].code = #270427003 // "Patient-initiated encounter (procedure)"
* compose.include[=].concept[+].code = #10383002 // "Counseling for termination of pregnancy (procedure)"
* compose.include[=].concept[+].code = #714812005 // "Induced termination of pregnancy (procedure)"
* compose.include[=].concept[+].code = #386394001 // "Pregnancy termination care (regime/therapy)"
* compose.include[=].concept[+].code = #169762003 // "Postnatal visit (regime/therapy)"
* compose.include[=].concept[+].code = #133899007 // "Postoperative care (regime/therapy)"
* compose.include[=].concept[+].code = #79586000 // "Tubal pregnancy (disorder)"
* compose.include[=].concept[+].code = #161744009 // "Past pregnancy history of miscarriage (situation)"

Instance: SyntheaSelfHarmVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for self_harm"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: self_harm.

v3-ActCode#SDV"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaSelfHarmVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSelfHarmVS"
* title = "Synthea Codes for self_harm"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: self_harm.\n\nv3-ActCode#SDV"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SDV
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #86849004 // "Suicidal poisoning (disorder)"
* compose.include[=].concept[+].code = #287185009 // "Attempted suicide by cutting or stabbing"
* compose.include[=].concept[+].code = #287182007 // "Attempted suicide by suffocation"
* compose.include[=].concept[+].code = #50849002 // "Emergency room admission (procedure)"
* compose.include[=].concept[+].code = #90407005 // "Evaluation of psychiatric state of patient (procedure)"
* compose.include[=].concept[+].code = #74857009 // "Hospital admission, short-term, 24 hours (procedure)"
* compose.include[=].concept[+].code = #185347001 // "Encounter for problem (procedure)"
* compose.include[=].concept[+].code = #183401008 // "Anti-suicide psychotherapy (regime/therapy)"
* compose.include[=].concept[+].code = #88848003 // "Psychiatric follow-up (procedure)"
* compose.include[=].concept[+].code = #287193009 // "Suicide using firearm (event)"
* compose.include[=].concept[+].code = #287191006 // "Suicide by suffocation"
* compose.include[=].concept[+].code = #44301001 // "Suicide (event)"
* compose.include[=].concept[+].code = #29240004 // "Autopsy examination (procedure)"

Instance: SyntheaSpinaBifidaVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Codes for spina_bifida"
Description: "A ValueSet containing all clinical codes found in the sensitive Synthea module: spina_bifida.

v3-ActCode#GDIS"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaSpinaBifidaVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSpinaBifidaVS"
* title = "Synthea Codes for spina_bifida"
* description = "A ValueSet containing all clinical codes found in the sensitive Synthea module: spina_bifida.\n\nv3-ActCode#GDIS"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#GDIS
* compose.include[+].system = "http://snomed.info/sct"
* compose.include[=].concept[+].code = #414667000 // "Meningomyelocele (disorder)"
* compose.include[=].concept[+].code = #171131006 // "Meningocele (disorder)"
* compose.include[=].concept[+].code = #76916001 // "Spina bifida occulta (disorder)"
* compose.include[=].concept[+].code = #32485007 // "Hospital admission (procedure)"
* compose.include[=].concept[+].code = #42839003 // "Repair of myelomeningocele (procedure)"
* compose.include[=].concept[+].code = #308335008 // "Patient encounter procedure (procedure)"
* compose.include[=].concept[+].code = #230745008 // "Hydrocephalus (disorder)"
* compose.include[=].concept[+].code = #47020004 // "Ventriculoperitoneal shunt (procedure)"
* compose.include[=].concept[+].code = #363215001 // "Musculoskeletal system physical examination (procedure)"
* compose.include[=].concept[+].code = #298382003 // "Scoliosis deformity of spine (disorder)"
* compose.include[=].concept[+].code = #302297009 // "Congenital deformity of foot (disorder)"
* compose.include[=].concept[+].code = #120991000119102 // "History of undergoing in utero procedure while a fetus (situation)"
* compose.include[=].concept[+].code = #84728005 // "Neurological examination (procedure)"
* compose.include[=].concept[+].code = #373587001 // "Chiari malformation type II (disorder)"
* compose.include[=].concept[+].code = #441763001 // "Endoscopic exteriorization of third ventricle (procedure)"
* compose.include[=].concept[+].code = #17881005 // "Cauterization of choroid plexus (procedure)"
* compose.include[=].concept[+].code = #414564002 // "Kyphosis deformity of spine (disorder)"
* compose.include[=].concept[+].code = #303653007 // "Computed tomography of head (procedure)"
* compose.include[=].concept[+].code = #241645008 // "Magnetic resonance imaging of spine (procedure)"
* compose.include[=].concept[+].code = #9002005 // "Manual testing of muscle function (procedure)"
* compose.include[=].concept[+].code = #1003755004 // "Allergy to Hevea brasiliensis latex protein (finding)"
* compose.include[=].concept[+].code = #252895004 // "Urodynamic studies (procedure)"
* compose.include[=].concept[+].code = #709640007 // "Doppler ultrasonography of renal vein (procedure)"
* compose.include[=].concept[+].code = #68566005 // "Urinary tract infectious disease (disorder)"
* compose.include[=].concept[+].code = #1163220007 // "Pressure injury stage II (disorder)"


// --- MASTER SENSITIVE VALUE SETS ---

Instance: SyntheaSubstanceAbuseVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Substance Abuse Codes"
Description: "A comprehensive ValueSet encompassing codes from all Synthea modules related to Opioid Addiction, OUD treatment, and chronic pain prescribing.

v3-ActCode#SUD"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaSubstanceAbuseVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSubstanceAbuseVS"
* title = "Synthea Substance Abuse Codes"
* description = "A comprehensive ValueSet encompassing codes from all Synthea modules related to Opioid Addiction, OUD treatment, and chronic pain prescribing.\n\nv3-ActCode#SUD"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SUD
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaOpioidAddictionVS"

Instance: SyntheaGeneticVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Genetic Disability Codes"
Description: "A comprehensive ValueSet encompassing codes from all Synthea modules related to genetic diseases.

v3-ActCode#GDIS"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaGeneticVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaGeneticVS"
* title = "Synthea Genetic Disability Codes"
* description = "A comprehensive ValueSet encompassing codes from all Synthea modules related to genetic diseases.\n\nv3-ActCode#GDIS"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#GDIS
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCysticFibrosisVS"

Instance: SyntheaMentalBehavioralHealthVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Mental and Behavioral Health Codes"
Description: "A comprehensive ValueSet encompassing codes from all Synthea modules related to mental health conditions, including ADD, PTSD, and self-harm events.

v3-ActCode#BH"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaMentalBehavioralHealthVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaMentalBehavioralHealthVS"
* title = "Synthea Mental and Behavioral Health Codes"
* description = "A comprehensive ValueSet encompassing codes from all Synthea modules related to mental health conditions, including ADD, PTSD, and self-harm events.\n\nv3-ActCode#BH"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#BH
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaAttentionDeficitDisorderVS"
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSelfHarmVS"    

Instance: SyntheaReproductiveHealthVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Reproductive Health Codes"
Description: "A comprehensive ValueSet encompassing codes from all Synthea modules related to reproductive health, including pregnancy, contraception, and sexual activity.

v3-ActCode#SEX"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaReproductiveHealthVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaReproductiveHealthVS"
* title = "Synthea Reproductive Health Codes"
* description = "A comprehensive ValueSet encompassing codes from all Synthea modules related to reproductive health, including pregnancy, contraception, and sexual activity.\n\nv3-ActCode#SEX"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#SEX
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaPregnancyVS"

Instance: SyntheaCognitiveVS
InstanceOf: ValueSet
Usage: #definition
Title: "Synthea Cognitive Disability Codes"
Description: "A comprehensive ValueSet encompassing codes from all Synthea modules related to cognitive and neurological disabilities.

v3-ActCode#COGN"
* status = #active
* experimental = false
* version = "0.1.0"
* name = "SyntheaCognitiveVS"
* url = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCognitiveVS"
* title = "Synthea Cognitive Disability Codes"
* description = "A comprehensive ValueSet encompassing codes from all Synthea modules related to cognitive and neurological disabilities.\n\nv3-ActCode#COGN"
* compose.inactive = true
* useContext[+].code = http://terminology.hl7.org/CodeSystem/usage-context-type#focus
* useContext[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-ActCode#COGN
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCerebralPalsyVS"
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaDementiaVS"
* compose.include[+].valueSet = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSpinaBifidaVS"


// Bundle of all of the Synthea Sensitive Value Sets
Instance: SyntheaSensitiveValueSetsBundle
InstanceOf: Bundle
Usage: #example
Title: "Synthea Sensitive Value Sets Bundle"
Description: "A FHIR Bundle containing all Synthea sensitive ValueSets."
* type = #collection
* entry[+].resource = SyntheaAttentionDeficitDisorderVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaAttentionDeficitDisorderVS"
* entry[+].resource = SyntheaCerebralPalsyVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCerebralPalsyVS"
* entry[+].resource = SyntheaCysticFibrosisVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaCysticFibrosisVS"
* entry[+].resource = SyntheaDementiaVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaDementiaVS"
* entry[+].resource = SyntheaOpioidAddictionVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaOpioidAddictionVS"
* entry[+].resource = SyntheaPregnancyVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaPregnancyVS"
* entry[+].resource = SyntheaSelfHarmVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSelfHarmVS"
* entry[+].resource = SyntheaSpinaBifidaVS
* entry[=].fullUrl = "http://SHIFT-Task-Force.github.io/slsValueSets/ValueSet/SyntheaSpinaBifidaVS"

