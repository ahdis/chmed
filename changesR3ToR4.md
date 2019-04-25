Changing an ImplementationGuide from R3 to R4

- Adapt ig.json to new FHIR Version and structure
- Convert the StructutreDefintions from R3 with R4 with the convert functionality of matchbox
- Adjust problems in differentials in StructureDefintions (which have to be later adapated also in examples
- CodeSystem: Just minor updates TODO: designation values are not displayed
- ValueSets: Just minor updates

QuestionnaireRespone.questionnaire instead of QuestionnaireRespone.reference

**MedicationStatement.taken has an element that is not marked with a snapshot match**
taken muss noch aus Beispielen entfernt werden, wird nicht mehr gebraucht (converter als Extension durchlassen oder vergessen?, bei der zurückkonvertierung brauchte es das wahrscheinlicb sonst nicht schemakonform: http://hl7.org/fhir/STU3/medicationstatement-definitions.html#MedicationStatement.taken)

**MedicationStatement.dosage.dose[x] has an element that is not marked with a snapshot match**
**MedicationStatement.dosage.doseAndRate.rate[x] has an element that is not marked with a snapshot match**
**MedicationRequest.dosageInstruction.dose[x] has an element that is not marked with a snapshot match**
**MedicationRequest.dosageInstruction.rate[x] has an element that is not marked with a snapshot match**

In STU3 0.* Dosage, Dosage has 0..1 rate[x] and 0..1 dose[x]
In R4 0.* Dosage, Dosage has 0..* doseRate with 0..1 rate[x] and  0..1 dose[x]

TODO: Need to create a profile probably on Dosage which will mapp the STU3 datalement to R4 for MedicationStatment/MedicationRequest

**Error in snapshot generation: Differential for http://chmed16af.emediplan.ch/fhir/StructureDefinition/chmed16af-rx-medicationrequest with id:** 
**MedicationRequest.substitution.allowed has an element that is not marked with a snapshot match**
TODO is now allowed[x], restricted back to booelan, needs to be adjusted in examples, converter

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


**Observation:Time Of Gestation**

chmed16af-observation-s01-timeofgestation.xml

Problem that thimeofgestation exaample does not validate with validator. It is built the same as the blood pressure profile. A blood pressure example shows the same error message:

  Error @ Observation.component[1] (line 150, col16) : Error in discriminator at Observation.component:DiastolicBP.code.coding: slicing found
  Error @ Observation.component[1] (line 150, col16) : Error in discriminator at Observation.component:SystolicBP.code.coding: slicing found
  Error @ Observation.component[2] (line 200, col16) : Error in discriminator at Observation.component:DiastolicBP.code.coding: slicing found
  Error @ Observation.component[2] (line 200, col16) : Error in discriminator at Observation.component:SystolicBP.code.coding: slicing found

See also: https://chat.fhir.org/#narrow/stream/179252-IG-creation/topic/Error.20in.20discriminator.20at.20.2E.2E.2E.3A.20slicing.20found

TODO: try latest validator and verify, make bug report (validator provided from febraury https://oss.sonatype.org/#nexus-search;quick~org.hl7.fhir.validation snapshot is on february release)