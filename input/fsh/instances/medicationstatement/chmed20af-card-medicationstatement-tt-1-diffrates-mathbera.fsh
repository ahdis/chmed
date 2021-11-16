Instance: chmed20af-card-medicationstatement-tt-1-diffrates-mathbera
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = Inline-Instance-for-chmed20af-card-medicationstatement-tt-1-diffrates-mathbera-1
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ddc5e747-baf8-4fd3-97b3-b8cf70df0dc9"
* status = #completed
* medicationReference.reference = "#cont4"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Krebsleiden"
* dosage[0].text = "einschleichend"
* dosage[+].sequence = 1
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 3600
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity = 10 'mL' "milliliter"
* dosage[+].sequence = 2
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 3600
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.timeOfDay = "09:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity = 20 'mL' "milliliter"
* dosage[+].sequence = 3
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 3600
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.timeOfDay = "10:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity = 30 'mL' "milliliter"
* dosage[+].sequence = 4
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 3600
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.timeOfDay = "11:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity = 40 'mL' "milliliter"