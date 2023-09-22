Instance: card-medicationstatement-dosage-4
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage Posology"
Description: "Example for a MedicationStatement (CARD) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[baseEntry][+].additionalInstruction = $sct#307165006 "Before meal (qualifier value)"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2021-10-07"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2021-10-07"
* dosage[baseEntry][=].asNeededBoolean = false
