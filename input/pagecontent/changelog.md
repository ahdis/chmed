
All significant changes to this FHIR implementation guide will be documented on this page.


### v3.0.0 (2022)
 
#### Added
* TBD: Description of the use of the flag ['mustSupport'](index.html#mustsupport).

#### Changed / Updated
* TBD: Adjustments to the current status of CH EMED (after its [ballot STU 2](https://fhir.ch/ig/ch-emed/2.0.0/changelog.html)).
   * Depending on [CH EMED v2.0.0](https://fhir.ch/ig/ch-emed/2.0.0/index.html)
* TBD: Update to the specification [CHMED21A (Vx.x)]().
   * Renaming the implementation guide: CHMED20AF -> CHMED21AF
   * Changing the canonical url: http://chmed20af.emediplan.ch -> http://chmed21af.emediplan.ch
* Switch to the new [IG template](https://github.com/ahdis/chmed20af/tree/master/emediplan-template) and adaptations to its new requiremenst. This adaptation only slightly changes the appearance of the IG.
* Transformation of the raw source (IG input) into [FHIR Shorthand](http://build.fhir.org/ig/HL7/fhir-shorthand/) files ([.fsh](https://github.com/ahdis/chmed20af/tree/master/input/fsh)). This change has no impact on the IG published as a web page, it just makes it easier to author the FHIR artifacts for the IG.

#### Fixed



### v2.0.0 (2021-06-30)
* Adjustments to the current status of CH EMED (after its [informative ballot STU 1](https://github.com/hl7ch/ch-emed/blob/master/0.2.0_STU1-informative-ballot.md)).
   * Depending on [CH EMED v1.0.0](http://fhir.ch/ig/ch-emed/1.0.0/index.html)



### v1.0.0 (2020-06-03)
* Integration of the Swiss EPR context.
   * Depending on [CH EMED v0.1.0](http://fhir.ch/ig/ch-emed/0.1.0/index.html)
   * Renaming the implementation guide: CHMED16AF -> CHMED20AF
   * Changing the canonical url: http://chmed16af.emediplan.ch -> http://chmed20af.emediplan.ch
* Remove the QR Code in the FHIR specification of CHMED16A.



### v0.2.0 (2019-06-11)
Updated draft version of the implementation guide for the FHIR based definition of [CHMED16A (V1.6)](https://emediplan.ch/dbFile/305/u-ce40/dl/eMediplan_CHMED16A_V1.6.pdf), based on [FHIR Release 4](http://hl7.org/fhir/R4/).  

#### Changing implementation guide from STU3 to R4
- Adapt ig.json to new FHIR Version and structure
- Convert the StructutreDefintions from STU3 with R4 with the convert functionality of matchbox
- Adjust problems in differentials in StructureDefinitions 
- CodeSystem: just minor updates (designation values are not displayed: this is due to the ig publisher, need to do a feature reqeust to add support) 
- ValueSets: just minor updates
- Observation: conversion of Code System Url
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



### v0.1.0 (2017-05-17)
Initial draft version of the implementation guide for the FHIR based definition of CHMED16A (V1.5), based on [FHIR Release 3 (STU)](http://hl7.org/fhir/STU3/). 
