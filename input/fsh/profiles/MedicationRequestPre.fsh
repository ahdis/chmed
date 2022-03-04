Profile: CHMEDMedicationRequestPre
Parent: CHEMEDMedicationRequest
Id: chmed-pre-medicationrequest
Title: "CHMED MedicationRequest (Pre)"
Description: "Profile for the MedicationRequest resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED MedicationRequest (Pre)"

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* medicationReference only Reference(CHMEDMedication)
* medicationReference
* subject only Reference(CHMEDPatientPre)
* subject ^short = "Patient"

* note.text ^short = "Application instruction"

* dosageInstruction ^short = "Posology"
* dosageInstruction[nonstructured]
* dosageInstruction[structurednormal] only CHMEDDosageStructuredNormalPre
* dosageInstruction[structurednormal]
* dosageInstruction[structuredsplit] only CHMEDDosageStructuredSplitPre
* dosageInstruction[structuredsplit]

* dispenseRequest.validityPeriod ^short = "In which period the prescription can be redeemed"
* dispenseRequest.numberOfRepeatsAllowed ^short = "Number of repetitions"
* dispenseRequest.quantity ^short = "Number of packages to be delivered"

* substitution.allowedCodeableConcept ^short = "'True' if medicament is not substitutable, otherwise 'false'" // TBD



Mapping: CHMED21A-for-CHMEDMedicationRequestPre
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDMedicationRequestPre
Target: "http://emediplan.ch/chmed21a"
* -> "Medicament"
* extension[privateField] -> "PFs -> PrivateField"
* medicationReference -> "Id with IdType 1 (None) or IdType 2 (GTIN)"
* subject -> "Patient"

* note.text -> "AppInstr"

* dosageInstruction -> "Pos -> Posology"
* dosageInstruction[nonstructured] -> "Posology -> PO.Text"

* dispenseRequest -> "Reps -> RepetitionObject"
* dispenseRequest.validityPeriod -> "RepetitionObject.Duration"
* dispenseRequest.numberOfRepeatsAllowed -> "RepetitionObject.Number.V"
* dispenseRequest.quantity -> "NbPack"

* substitution.allowedCodeableConcept -> "Sub"