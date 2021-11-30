Profile: MedicationRequestPre
Parent: CHEMEDMedicationRequest
Id: chmed20af-pre-medicationrequest
Title: "MedicationRequest (Pre)"
Description: "Profile for the MedicationRequest resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF MedicationRequest (Pre)"
* contained MS
* extension contains ExtPrivateField named privatefield 0..* MS
* extension[privatefield] ^short = "Private fields for patient"
* identifier MS
* identifier.system MS
* identifier.value MS
* status MS
* medicationReference only Reference(Medication)
* medicationReference MS
* subject only Reference(PatientPre)
* subject MS
* note MS
* dosageInstruction MS
* dosageInstruction[nonstructured] MS
* dosageInstruction[structurednormal] only PreDosageStructuredNormalChmed20af
* dosageInstruction[structurednormal] MS
* dosageInstruction[structuredsplit] only PreDosageStructuredSplitChmed20af
* dosageInstruction[structuredsplit] MS
* dispenseRequest MS
* dispenseRequest.numberOfRepeatsAllowed MS
* dispenseRequest.quantity MS
* substitution MS
* substitution.allowedCodeableConcept MS



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