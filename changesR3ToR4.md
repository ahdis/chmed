# Changing ImplementationGuide from R3 to R4
- Adapt ig.json to new FHIR Version and structure
- Convert the StructutreDefintions from R3 with R4 with the convert functionality of matchbox
- Adjust problems in differentials in StructureDefinitions (which have to be later adapated also in the examples)
- CodeSystem: Just minor updates (designation values are not displayed: this is an issue with the ig publisher, support for 
- ValueSets: Just minor updates
- Observation:  conversion of Code System Url
- Condition: clinicalStatus changed to Coding with terminology clinicalStatus
- TimeOfGestation: changed profile that validation is supported (http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-obs-timeofgestation), needs pull request [gf#21240](https://github.com/hapifhir/org.hl7.fhir.core/pull/21) integrated
- Questionnaire PMC example fixed for validation error (wrong order) and warning
- QuestionnaireRespone.questionnaire instead of QuestionnaireRespone.reference
- MedicationStatement.taken will be set to unk for conversin R3->R4
- MediciationRequest is now allowed[x], restricted back to booelan, needs to be adjusted in examples, converter

**Dosages**
MedicationStatement.dosage.dose[x] has an element that is not marked with a snapshot match
MedicationStatement.dosage.doseAndRate.rate[x] has an element that is not marked with a snapshot match
MedicationRequest.dosageInstruction.dose[x] has an element that is not marked with a snapshot match
MedicationRequest.dosageInstruction.rate[x] has an element that is not marked with a snapshot match

In STU3 0.* Dosage, Dosage has 0..1 rate[x] and 0..1 dose[x]
In R4 0.* Dosage, Dosage has 0..* doseRate with 0..1 rate[x] and  0..1 dose[x]

TODO: Need to create a profile probably on Dosage which will mapp the STU3 datalement to R4 for MedicationStatment/MedicationRequest

**Error in snapshot generation: Differential for http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-rx-medicationrequest with id:** 


**Condition.clinicalStatus: illegal constrained type code from CodeableConcept**

TOOD: verify which Elements have been added in R3 to Medicastion* and which should be set to 0 according to CHMED16AF

**Observation**

Vitalsigns category profile changed from:

  <category>
    <coding>
      <system value="http://hl7.org/fhir/observation-category"/>
      <code value="vital-signs"/>
      <display value="Vital Signs"/>
    </coding>
  </category>

<category> 
    <coding> 
      <system value="http://terminology.hl7.org/CodeSystem/observation-category"/> 
      <code value="vital-signs"/> 
      <display value="Vital Signs"/> 
    </coding> 
  </category> 

**PrivateFields**
New extensions private fields, needs to be also adjusted in the documentation and maybe also conversion?