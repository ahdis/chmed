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
* identifier
* identifier.system
* identifier.value
* status
* medicationReference only Reference(CHMEDMedication)
* medicationReference
* subject only Reference(CHMEDPatientPre)
* subject

* note.text MS

* dosageInstruction MS
* dosageInstruction[nonstructured] MS
* dosageInstruction[structurednormal] only CHMEDDosageStructuredNormalPre
* dosageInstruction[structurednormal] MS
* dosageInstruction[structuredsplit] only CHMEDDosageStructuredSplitPre
* dosageInstruction[structuredsplit] MS

* dispenseRequest
* dispenseRequest.numberOfRepeatsAllowed
* dispenseRequest.quantity
* substitution
* substitution.allowedCodeableConcept



Mapping: CHMED21A-for-CHMEDMedicationRequestPre
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDMedicationRequestPre
Target: "http://emediplan.ch/chmed21a"
* -> "Medicament"
//* extension[privateField] -> "Medicament.PFields"
//* medicationReference -> "Medicament.Id with Medicament.IdType 2 (GTIN)"
//* subject -> "Patient"

* note.text -> "AppInstr"

* dosageInstruction -> "Pos"
* dosageInstruction[nonstructured] -> "Pos -> PO.Text"

//* dispenseRequest.numberOfRepeatsAllowed -> "Medicament.Rep"
//* dispenseRequest.quantity -> "Medicament.NbPack"
//* substitution.allowedCodeableConcept -> "Medicament.Subs"