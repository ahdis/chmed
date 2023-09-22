Updated draft version of the implementation guide for the FHIR based definition of [CHMED16A (V1.6)](https://emediplan.ch/dbFile/305/u-ce40/dl/eMediplan_CHMED16A_V1.6.pdf), based on [FHIR Release 4](http://hl7.org/fhir/R4/).  

- Adapt ig.json to new FHIR Version and structure
- Convert the StructutreDefintions from STU3 with R4 with the convert functionality of matchbox
- Adjust problems in differentials in StructureDefinitions 
- CodeSystem: just minor updates (designation values are not displayed: this is due to the ig publisher, need to do a feature reqeust to add support) 
- ValueSets: just minor updates
- Observation: conversion of CodeSystem Url
- Condition: clinicalStatus changed to Coding with terminology clinicalStatus, fixed errors in snapshot generation
- TimeOfGestation: changed profile that validation is supported (http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-obs-timeofgestation), needs pull request [gf#21240](https://github.com/hapifhir/org.hl7.fhir.core/pull/21), is now integrated
- Questionnaire PMC example fixed for validation error (wrong order) and warning
- QuestionnaireRespone.questionnaire instead of QuestionnaireRespone.reference
- MedicationStatement.taken will be set to unk for conversion STU3->R4
- MediciationRequest is now allowed[x], restricted valueBoelan, adjusted in examples and converter
- New extension for private fields for patient, incl. conversion, adjusted in the documentation 
- SimpleQuanity profile for Unitcodes (new)
- New Dosage profile for R4 instead of having it embedded in MedciationRequest and MedicationStatment 
   - In STU3 0..* Dosage, Dosage has 0..1 rate[x] and 0..1 dose[x]
   - In R4 0..* Dosage, Dosage has 0..* doseRate with 0..1 rate[x] and 0..1 dose[x]
- Adding Composition examples in STU3 and conversion to R4
- Rebuilt bundles (with matchbox IgUploader and $document operation)
- History added (see also http://wiki.hl7.org/index.php?title=Process_for_Publishing_a_FHIR_IG):
    1. package-list.json needs to be defined at cannonical url. then 
    2. adapted https://github.com/HL7/fhir-ig-history-template to use javascript instead of cfml, workaround for cors issued with current build to redirect manual point to the canonical history page http://chmed16af.emediplan.ch/fhir/history.html if package-list.json cannot be reslved
- Fixed Bundle.entry[1].resource.subject.reference	error with pull request    
- migrated to version 0.2.0
- publication of 0.2.0
- StructureMaps are provided to transform from 0.1.0 to 0.2.0 and back. The original are in the maps0.1.0 and maps0.2.0 directory. With a special ig publisher edition this maps are converted to StructureMaps. To faciliate online build the StructureMaps are then copied.

```
cp ./output/StructureMap-*.xml ./resources/structuremap/
cd ./resources/structuremap/
rename -e 's/StructureMap-//' *.xml
cd ..
cd ..
```
