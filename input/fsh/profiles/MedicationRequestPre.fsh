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

* subject ^short = "Patient"

* reasonCode.text ^short = "Taking reason"

* dosageInstruction ^short = "Posology"
* dosageInstruction[baseEntry]
* dosageInstruction[additionalEntry]

* dispenseRequest.validityPeriod ^short = "In which period the prescription can be redeemed"
* dispenseRequest.numberOfRepeatsAllowed ^short = "Number of repetitions"
* dispenseRequest.quantity ^short = "Number of packages to be delivered"

* substitution.allowedCodeableConcept ^short = "'E (equivalent)': Substitution occurred or is permitted with another bioequivalent and therapeutically equivalent product."



Mapping: eMediplan-for-CHMEDMedicationRequestPre
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationRequestPre
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* -> "Medicament"
* extension[privateField] -> "PFs -> Private Field"
* medicationReference -> "Id with IdType 1 (None) or IdType 2 (GTIN)"
* subject -> "Patient"
* reasonCode.text -> "TkgRsn"

* dosageInstruction -> "Pos -> Posology"
* dosageInstruction[baseEntry] -> "Posology"
* dosageInstruction[additionalEntry] -> "Posology"

* dispenseRequest -> "Reps -> Repetition object"
* dispenseRequest.validityPeriod -> "Repetition object.Duration"
* dispenseRequest.numberOfRepeatsAllowed -> "Repetition object.Number.V"
* dispenseRequest.quantity -> "NbPack"

* substitution.allowedCodeableConcept -> "Sub"

