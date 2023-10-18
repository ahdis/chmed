Profile: CHMEDCompositionMedicationCard
Parent: CHEMEDCompositionMedicationCard
Id: chmed-card-composition
Title: "CHMED Medication Card Composition"
Description: "Profile for the Composition resource of the Medication Card document"
* . ^short = "CHMED Medication Card Composition"
//* extension contains CHMEDExtension named exts 0..*
//* extension[exts] ^short = "Extension"
* identifier ^short = "The ID"
* type ^short = "MedicationPlan (MP)"
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"
* date ^short = "The date of creation"
* author ^slicing.discriminator.type = #profile
* author ^slicing.discriminator.path = "resolve()"
* author ^slicing.rules = #open
* author contains
    person 1..1     
* author[person] only Reference(CHMEDPractitionerRole or CHMEDPatientCard)
* author[person] ^short = "The author of the document (healthcare person or patient)"
* section[card].entry only Reference(CHMEDMedicationStatementCard)
* section[card].entry ^short = "Medicament"
* section[annotation].text ^short = "The remark"
* section contains healthConcerns 0..1
* section[healthConcerns] ^short = "Medical data information"
* section[healthConcerns].extension contains CHMEDExtension named exts 0..*
* section[healthConcerns].extension[exts] ^short = "Extension"
* section[healthConcerns].code 1..
* section[healthConcerns].code = $loinc#75310-3 "Health concerns Document"
* section[healthConcerns].entry ^slicing.discriminator.type = #profile
* section[healthConcerns].entry ^slicing.discriminator.path = "resolve()"
* section[healthConcerns].entry ^slicing.ordered = false
* section[healthConcerns].entry ^slicing.rules = #open
* section[healthConcerns].entry contains
    dLstMen 0..1 and
    prematureBaby 0..1 and
    timeOfGestation 0..1 and
    risks 0..* and
    bodyWeight 0..1 and
    bodyHeight 0..1
* section[healthConcerns].entry[dLstMen] only Reference(CHMEDFirstDayOfLastMenstruation)
* section[healthConcerns].entry[dLstMen] ^short = "First day of last menstruation"
* section[healthConcerns].entry[prematureBaby] only Reference(CHMEDPrematureBaby)
* section[healthConcerns].entry[prematureBaby] ^short = "Premature baby"
* section[healthConcerns].entry[timeOfGestation] only Reference(CHMEDTimeOfGestation)
* section[healthConcerns].entry[timeOfGestation] ^short = "Time of gestation"
* section[healthConcerns].entry[risks] only Reference(CHMEDRisks)
* section[healthConcerns].entry[risks] ^short = "Risks"
* section[healthConcerns].entry[bodyWeight] only Reference(CHMEDBodyWeight)
* section[healthConcerns].entry[bodyWeight] ^short = "Body weight"
* section[healthConcerns].entry[bodyHeight] only Reference(CHMEDBodyHeight)
* section[healthConcerns].entry[bodyHeight] ^short = "Body height"
* section[healthConcerns].section 0..0



Mapping: eMediplan-for-CHMEDCompositionMedicationCard
Id: eMediplan
Title: "eMediplan"
Source: CHMEDCompositionMedicationCard
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medication"
//* extension[exts] -> "exts -> Extension"
* identifier -> "id"
* type -> "medType (1: MedicationPlan (MP))"
* subject -> "patient -> Patient"
* date -> "dt"
* author -> "auth (1: Healthcare person, 2: Patient) -> hcPerson/patient -> HealthcarePerson/Patient"
* section[card] -> "meds -> Medicament"
* section[annotation].text -> "rmk"
* section[healthConcerns] -> "Patient.mData -> MedicalData"
* section[healthConcerns].extension[exts] -> "MedicalData.exts -> Extension"
* section[healthConcerns].entry[dLstMen] -> "MedicalData.dLstMen"
* section[healthConcerns].entry[prematureBaby] -> "MedicalData.prem"
* section[healthConcerns].entry[timeOfGestation] -> "MedicalData.toG"
* section[healthConcerns].entry[risks] -> "MedicalData.rcs -> RiskCategory"
* section[healthConcerns].entry[bodyWeight] -> "MedicalData.w"
* section[healthConcerns].entry[bodyHeight] -> "MedicalData.h"
