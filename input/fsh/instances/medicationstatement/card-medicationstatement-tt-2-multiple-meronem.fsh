Instance: card-medicationstatement-tt-2-multiple-meronem
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - MERONEM"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = tt-2-multiple-meronem
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:9a55ba81-9a54-4cd5-867c-f7c353f1102c"
* status = #completed
* medicationReference.reference = "#tt-2-multiple-meronem"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Infektion"
* note.text = "Gabe von 2g 3x täglich (08:00-12:00-18:00), i.v. für 30 Minuten, jeden Dienstag während 3 Wochen"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2017-09-05"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2020-09-26"
* dosage[baseEntry].timing.repeat.duration = 1800
* dosage[baseEntry].timing.repeat.durationUnit = #s
* dosage[baseEntry].timing.repeat.frequency = 3
* dosage[baseEntry].timing.repeat.period = 1
* dosage[baseEntry].timing.repeat.periodUnit = #wk
* dosage[baseEntry].timing.repeat.dayOfWeek = #tue
* dosage[baseEntry].timing.repeat.timeOfDay[0] = "08:00:00"
* dosage[baseEntry].timing.repeat.timeOfDay[+] = "12:00:00"
* dosage[baseEntry].timing.repeat.timeOfDay[+] = "18:00:00"
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[baseEntry].doseAndRate.doseQuantity = 2 'g' "gram"