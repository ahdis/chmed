Instance: card-medicationstatement-tt-1-diffrates-mabthera
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - MABTHERA"
Description: "Example for a MedicationStatement (CARD)"
Usage: #example
* contained = tt-1-diffrates-mabthera
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ddc5e747-baf8-4fd3-97b3-b8cf70df0dc9"
* status = #completed
* medicationReference.reference = "#tt-1-diffrates-mabthera"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Krebsleiden"
* note.text = "einschleichend"

* dosage[baseEntry][+].sequence = 1
* dosage[baseEntry][=].timing.repeat.count = 1
* dosage[baseEntry][=].timing.repeat.duration = 3600
* dosage[baseEntry][=].timing.repeat.durationUnit = #s
* dosage[baseEntry][=].timing.repeat.timeOfDay = "08:00:00"
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 10 'mL' "milliliter"

* dosage[additionalEntry][+].sequence = 2
* dosage[additionalEntry][=].timing.repeat.when = #MORN // TODO: placeholder for running ig
* dosage[additionalEntry][=].timing.repeat.count = 1
* dosage[additionalEntry][=].timing.repeat.duration = 3600
* dosage[additionalEntry][=].timing.repeat.durationUnit = #s
* dosage[additionalEntry][=].timing.repeat.timeOfDay = "09:00:00"
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 20 'mL' "milliliter"

* dosage[additionalEntry][+].sequence = 3
* dosage[additionalEntry][=].timing.repeat.when = #MORN // TODO: placeholder for running ig
* dosage[additionalEntry][=].timing.repeat.count = 1
* dosage[additionalEntry][=].timing.repeat.duration = 3600
* dosage[additionalEntry][=].timing.repeat.durationUnit = #s
* dosage[additionalEntry][=].timing.repeat.timeOfDay = "10:00:00"
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 30 'mL' "milliliter"

* dosage[additionalEntry][+].sequence = 4
* dosage[additionalEntry][=].timing.repeat.when = #MORN // TODO: placeholder for running ig
* dosage[additionalEntry][=].timing.repeat.count = 1
* dosage[additionalEntry][=].timing.repeat.duration = 3600
* dosage[additionalEntry][=].timing.repeat.durationUnit = #s
* dosage[additionalEntry][=].timing.repeat.timeOfDay = "11:00:00"
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 40 'mL' "milliliter"