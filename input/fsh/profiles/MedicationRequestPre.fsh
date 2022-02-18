Profile: CHMED20AFMedicationRequestPre
Parent: CHEMEDMedicationRequest
Id: chmed20af-pre-medicationrequest
Title: "CHMED20AF MedicationRequest (Pre)"
Description: "Profile for the MedicationRequest resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF MedicationRequest (Pre)"
* contained
* extension contains CHMED20AFExtPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier.system
* identifier.value
* status
* medicationReference only Reference(CHMED20AFMedication)
* medicationReference
* subject only Reference(CHMED20AFPatientPre)
* subject
* note
* dosageInstruction
* dosageInstruction[nonstructured]
* dosageInstruction[structurednormal] only PreDosageStructuredNormalChmed20af
* dosageInstruction[structurednormal]
* dosageInstruction[structuredsplit] only PreDosageStructuredSplitChmed20af
* dosageInstruction[structuredsplit]
* dispenseRequest
* dispenseRequest.numberOfRepeatsAllowed
* dispenseRequest.quantity
* substitution
* substitution.allowedCodeableConcept



Mapping: CHMED16A-for-CHMED20AFMedicationRequestPre
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFMedicationRequestPre
Target: "http://emediplan.ch/chmed16a"
* -> "Medicament"
* extension[privatefield] -> "Medicament.PFields"
* medicationReference -> "Medicament.Id with Medicament.IdType 2 (GTIN)"
* subject -> "Patient"
* dosageInstruction[nonstructured] -> "Medicament.AppInstr"
* dosageInstruction[structurednormal] -> "Medicament.Pos"
* dosageInstruction[structuredsplit] -> "Medicament.Pos"
* dispenseRequest.numberOfRepeatsAllowed -> "Medicament.Rep"
* dispenseRequest.quantity -> "Medicament.NbPack"
* substitution.allowedCodeableConcept -> "Medicament.Subs"