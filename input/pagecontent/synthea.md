
I have been looking at Synthea for inspiration on medical health data. I did not know that it does have some ability to create some sensitive health topics. It does not know these are sensitive health topics, it just knows they are kinds of health episodes, that they call "Modules".

Synthea is an effort by Mitre https://github.com/synthetichealth to create tooling to create test data that should be realistic, but is completely fabricated. As such they have "modules" for various kinds of health episodes, for which each module covers the lifecycle of that health topic.

https://github.com/synthetichealth/synthea/wiki/Module-Gallery

It would be good to be able to identify which of these modules fall into which of our concepts of sensitive categories.

From that, we can grab the clinical codes that Synthea uses in those sensitive modules.. This is not an end solution, but gets us to a point where we can use Synthea data (pre-built or freshly made) in our sandbox and our sandbox will properly tag the data.

### Behavioral

The [synthea module Opioid Addiction](https://github.com/synthetichealth/synthea/wiki/Module-Gallery#Opioid-Addiction) is well aligned with our Behavioral Health use-case, as that also includes Opioid codes.

Here is their [graphical UI for modules and creating of new modules](https://synthetichealth.github.io/module-builder#opioid_addiction). It becomes very clear that doing a code match against codes in the data object is not sufficient.  The module creates many encounters that are not themselves problematic, but because of a pattern (of abuse) the patient becomes understood as having Opioid Addiction... So, should the non-problematic, but behavioral displaying, encounters to be somehow detected by the SLS? If so, it is not going to do it because of some clear code. I can look at the example data to see if the condition reference these encounters, which would be one way to detect this; but that brings up the point that these indirect linkages are likely to tag everything. 

Here are the codes I find in that module that seem indicative in sushi valueSet form (I could add these to our demo github, but that does not update the SLS code.I will note that NONE of the codes used in the synthea opioid addiction use-case are in our current valueSet or SLS, none of them.

```fsh
* http://snomed.info/sct#1149222004 "Overdose (disorder)"
* http://www.nlm.nih.gov/research/umls/rxnorm#1049221 "Acetaminophen 325 MG / Oxycodone Hydrochloride 5 MG Oral Tablet"
* http://www.nlm.nih.gov/research/umls/rxnorm#856987 "Acetaminophen 300 MG / HYDROcodone Bitartrate 5 MG Oral Tablet"
* http://www.nlm.nih.gov/research/umls/rxnorm#1860154 "Abuse-Deterrent 12 HR Oxycodone Hydrochloride 15 MG Extended Release Oral Tablet"
* http://snomed.info/sct#56876005 "Drug rehabilitation and detoxification (regime/therapy)"
* http://snomed.info/sct#60112009 "Drug addiction counseling (procedure)"
* http://snomed.info/sct#61480009 "Drug detoxification (regime/therapy)"
* http://snomed.info/sct#266707007 "Drug addiction therapy (regime/therapy)"
* http://snomed.info/sct#52052004 "Rehabilitation therapy (regime/therapy)"
* http://snomed.info/sct#6525002 "Dependent drug abuse (disorder)"
```

Many years ago, the clinicians the Security WG was working with on privacy, pointed out that Clinicians are amazingly good inference engines, which at the time was caution that anything left in the record can be evidence to a clinician. So, who are we protecting against? Meaning we need to have a good definition of who we are trying to protect against, what level of healthcare informatics expertise?

Note that I think the synthea pre-built dataset has 20 patients in "Drug rehabilitation and detoxification" treatment.
https://github.com/synthetichealth/synthea-sample-data/blob/main/downloads/synthea_sample_data_fhir_r4_sep2019.zip

Note that this dataset can be easily entered into the HAPI server. The zip is full of transaction Bundles that are accepted by HAPI. YOU MUST first submit the hospitalInformation and the practitionerInformation bundles; then all the patient bundles can be submitted without  a problem. (I just renamed the hospital and practitioner json with "AAA" prefix and they went in with simple loop.)

### ValueSets from Synthea Modules

I enlisted AI to tell me which modules covered sensitive data, extract out the codes they used, put those codes into module specific valueSet resources, and create valueSets for the sensitive topics. 
Here is the list of Synthea modules, categorized by Sensitive Topic, with the hyperlink to their JSON definition, presented as a standard markdown table:

| Sensitive Topic | Hyperlink to module-builder or JSON Definition (on GitHub) |
| :--- | :--- |
| [Substance Abuse](ValueSet-SyntheaSubstanceAbuseVS.html) | [Opioid Addiction](https://synthetichealth.github.io/module-builder#opioid_addiction) |
| | [Prescribing Opioids for Chronic Pain and Treatment of OUD](https://www.google.com/search?q=https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/opioid_treatment.json) |
| [Mental Health / Behavioral Health](ValueSet-SyntheaMentalBehavioralHealthVS.html) | [Self Harm](https://synthetichealth.github.io/module-builder#self_harm) |
| | [Attention Deficit Disorder](https://synthetichealth.github.io/module-builder#attention_deficit_disorder) |
| | [Veteran PTSD](https://synthetichealth.github.io/module-builder/#veteran_ptsd) |
| [Reproductive Health](ValueSet-SyntheaReproductiveHealthVS.html) | [Pregnancy](https://synthetichealth.github.io/module-builder#pregnancy) |
| | [Contraceptives](https://synthetichealth.github.io/module-builder#contraceptives) |
| | [Sexual Activity](https://synthetichealth.github.io/module-builder#sexual_activity) |
| [Sickle Cell / Genetic](ValueSet-SyntheaGeneticVS.html) | [Sickle Cell Disease](https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/sickle_cell_disease.json) |
| | [Cystic Fibrosis](https://synthetichealth.github.io/module-builder#cystic_fibrosis) |
| [Cognitive Disability](ValueSet-SyntheaCognitiveVS.html) | [Alzheimer's Disease](https://www.google.com/search?q=https://github.com/synthetichealth/synthea/blob/master/src/main/resources/modules/alzheimers_disease.json) |
| | [Dementia](https://synthetichealth.github.io/module-builder#dementia) |
| | [Cerebral Palsy](https://synthetichealth.github.io/module-builder#cerebral_palsy) |
| | [Spina Bifida](https://synthetichealth.github.io/module-builder#spina_bifida) |
{: .grid}

Note that we should not accept all the codes found in a module as being sensitive to that sensitive topic. For example in the Opioid Abuse module, there are some precursor scenarios where the patient goes to the emergency room. These emergency room visits use codes to cover the stated reason to visit the emergency room. The module has them in, as it is drug seeking behavior but itself would likely not be protected by Drug Abuse protections.

Note that the module-builder shows more modules than are found in Synthea. Without their json definition, the codes can't be extracted. 
