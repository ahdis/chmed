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
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"

* dosageInstruction ^short = "Posology"
* dosageInstruction[baseEntry]
* dosageInstruction[additionalEntry]

* dispenseRequest.validityPeriod ^short = "In which period the prescription can be redeemed"
* dispenseRequest.numberOfRepeatsAllowed ^short = "Number of repetitions"
* dispenseRequest.quantity ^short = "Number of packages to be delivered"

* substitution.allowedCodeableConcept ^short = "'True' if medicament is not substitutable, otherwise 'false'" // TBD



Mapping: CHMED23A-for-CHMEDMedicationRequestPre
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedicationRequestPre
Target: "http://emediplan.ch/chmed23a"
* -> "Medicament"
* extension[privateField] -> "PFs -> Private Field"
* medicationReference -> "Id with IdType 1 (None) or IdType 2 (GTIN)"
* subject -> "Patient"

* dosageInstruction -> "Pos -> Posology"
* dosageInstruction[baseEntry] -> "Posology"
* dosageInstruction[additionalEntry] -> "Posology"

* dispenseRequest -> "Reps -> Repetition object"
* dispenseRequest.validityPeriod -> "Repetition object.Duration"
* dispenseRequest.numberOfRepeatsAllowed -> "Repetition object.Number.V"
* dispenseRequest.quantity -> "NbPack"

* substitution.allowedCodeableConcept -> "Sub"


Mapping: CHMED16A-for-CHMEDMedicationRequestPre
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDMedicationRequestPre
Target: "http://emediplan.ch/chmed16a"
* -> "Medicament"
* extension[privateField] -> "PFields -> Private Field"
* medicationReference -> "Id with IdType"
* subject -> "Patient"

* dosageInstruction -> "Pos -> Posology"
* dosageInstruction[baseEntry] -> "Posology"
* dosageInstruction[additionalEntry] -> "Posology"

* dispenseRequest.numberOfRepeatsAllowed -> "Rep"
* dispenseRequest.quantity -> "NbPack"

* substitution.allowedCodeableConcept -> "Subs"