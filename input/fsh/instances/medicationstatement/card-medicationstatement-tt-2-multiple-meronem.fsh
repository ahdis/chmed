Instance: card-medicationstatement-tt-2-multiple-meronem
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - MERONEM"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = tt-2-multiple-meronem
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9a55ba81-9a54-4cd5-867c-f7c353f1102c"
* status = #completed
* medicationReference.reference = "#tt-2-multiple-meronem"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "Practitioner/practitioner-s01"
* reasonCode.text = "Infektion"
* dosage[0].text = "Gabe von 2g 3x täglich (08:00-12:00-18:00), i.v. für 30 Minuten, jeden Dienstag während 3 Wochen"
* dosage[+].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[=].timing.repeat.boundsPeriod.end = "2020-09-26"
* dosage[=].timing.repeat.duration = 1800
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.frequency = 3
* dosage[=].timing.repeat.period = 1
* dosage[=].timing.repeat.periodUnit = #wk
* dosage[=].timing.repeat.dayOfWeek = #tue
* dosage[=].timing.repeat.timeOfDay[0] = "08:00:00"
* dosage[=].timing.repeat.timeOfDay[+] = "12:00:00"
* dosage[=].timing.repeat.timeOfDay[+] = "18:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity = 2 'g' "gram"