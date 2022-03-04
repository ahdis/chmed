Profile: CHMEDMedicationRequestPre
Parent: CHEMEDMedicationRequest
Id: chmed-pre-medicationrequest
Title: "CHMED MedicationRequest (Pre)"
Description: "Profile for the MedicationRequest resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED MedicationRequest (Pre)"
* contained

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* identifier
* identifier.system
* identifier.value
* status
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

* dispenseRequest
* dispenseRequest.numberOfRepeatsAllowed
* dispenseRequest.quantity

* substitution.allowedCodeableConcept ^short = "'True' if medicament is not substitutable, otherwise 'false'" // TBD



Mapping: CHMED21A-for-CHMEDMedicationRequestPre
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDMedicationRequestPre
Target: "http://emediplan.ch/chmed21a"
* -> "Medicament"
* extension[privateField] -> "PFs -> PrivateField"
//* medicationReference -> "Medicament.Id with Medicament.IdType 2 (GTIN)"
* subject -> "Patient"

* note.text -> "AppInstr"

* dosageInstruction -> "Pos -> Posology"
* dosageInstruction[nonstructured] -> "Posology -> PO.Text"

//* dispenseRequest.numberOfRepeatsAllowed -> "Medicament.Rep"
//* dispenseRequest.quantity -> "Medicament.NbPack"
* substitution.allowedCodeableConcept -> "Sub"