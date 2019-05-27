# Changing ImplementationGuide from R3 to R4
- Adapt ig.json to new FHIR Version and structure
- Convert the StructutreDefintions from R3 with R4 with the convert functionality of matchbox
- Adjust problems in differentials in StructureDefinitions 
- CodeSystem: Just minor updates (designation values are not displayed: this is due to the ig publisher, need to do a feature reqeust to add support) 
- ValueSets: Just minor updates
- Observation:  conversion of Code System Url
- Condition: clinicalStatus changed to Coding with terminology clinicalStatus, fixed errors in snapshot generation
- TimeOfGestation: changed profile that validation is supported (http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-obs-timeofgestation), needs pull request [gf#21240](https://github.com/hapifhir/org.hl7.fhir.core/pull/21), is now integrated
- Questionnaire PMC example fixed for validation error (wrong order) and warning
- QuestionnaireRespone.questionnaire instead of QuestionnaireRespone.reference
- MedicationStatement.taken will be set to unk for conversion R3->R4
- MediciationRequest is now allowed[x], restricted valueBoelan, adjusted in examples and converter
- New extension for private fields for patient, incl. conversion, adjusted in the documentation 
- SimpleQuanity profile for Unitcodes (new)
- New Dosage profile for R4 instead of having it embedded in MedciationRequest and MedicationStatment, 
  In STU3 0.* Dosage, Dosage has 0..1 rate[x] and 0..1 dose[x]
  In R4 0.* Dosage, Dosage has 0..* doseRate with 0..1 rate[x] and  0..1 dose[x]

TODO: verify which Elements have been added in R3 to Medicastion* and which should be set to 0 according to CHMED16AF
TODO: Rebuild bundles