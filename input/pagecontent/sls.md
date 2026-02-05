The [SHIFT LEAP SLS GitHub](https://github.com/SHIFT-Task-Force/leap-sls) focuses solely on:

- Inspecting FHIR Bundle entries (e.g., Condition, Observation, MedicationStatement)
- Matching codes against internal rule sets for sensitive categories
- Applying meta.security labels directly to those FHIR resources
- Add tagging attribution to the LEAP SLS
  - extension-sec-label-basis = `v3-ActCode#42CFRPart2`
  - extension-sec-label-classifier = "LEAP+ Security Labeling Service"

There is no logic in the codebase for:

- Creating Provenance resources linking labeling actions to agents or timestamps via FHIR
- Emitting audit trails or logs as FHIR resources

```mermaid
graph TD
  A[DocumentReference or Bundle] --> B[Code Analysis Engine]
  B --> C{Sensitive Topic Detected?}
  C -->|Yes| D[Apply meta.security Labels]
  C -->|No| E[No Labeling Needed]

  D --> F[Updated Resource with Labels]
  F --> G[Provenance]
  G --> H[Agent: NLP Engine]
  G --> I[Entity: Original Resource]

  F --> J[AuditEvent]
  J --> K[Who/What/When/Where]
  ```

### Leap SLS Sensitive Topic ValueSets from the SLS Reference Implementation

- [All Sensitive Codes](ValueSet-LeapSlsSensitiveCodes.html)
- [Behavioral Health Codes (BH)](ValueSet-LeapSlsBehavioralHealthCodes.html)
- [Psychiatric Notes Codes (PSYTHPN, BH)](ValueSet-LeapSlsPsychiatricNotesCodes.html)
- [Sexuality and Reproductive Health Codes (SEX)](ValueSet-LeapSlsSexualityAndReproductiveHealthCodes.html)
- [Opioid Abuse Codes (SUD+opiod)](ValueSet-LeapSlsOpioidCodes.html)
- [Hallucinogen Codes (SUD+hallucinogen)](ValueSet-LeapSlsHallucinogenCodes.html)
- [Bundle of Leap SLS Sensitive Kind Codes](Bundle-LeapSlsBundledSensitiveKindCodes.html)

Note that "Normal" data are those that are none of these sensitive categories, otherwise known as "Medical" data.

Note the local codes are similar to those defined in this IG, but without the system specified

- local#hallucinogen "hallucinogen substance use"
- local#bh_substances "behavioral health related substances"
- local#opiod "opiod substance use"
