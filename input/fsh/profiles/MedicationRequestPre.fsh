Profile: MedicationRequestPre
Parent: CHEMEDMedicationRequest
Id: chmed20af-pre-medicationrequest
Title: "MedicationRequest (Pre)"
Description: "Profile for the MedicationRequest resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF MedicationRequest (Pre)"
* contained
* extension contains ExtPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier.system
* identifier.value
* status
* medicationReference only Reference(Medication)
* medicationReference
* subject only Reference(PatientPre)
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



Mapping: CHMED16A-for-MedicationRequestPre
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: MedicationRequestPre
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