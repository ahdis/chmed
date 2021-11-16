Instance: chmed20af-card-medicationstatement-tt
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = Inline-Instance-for-chmed20af-card-medicationstatement-tt-1
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:92b9336a-e3a8-412b-aa04-808a8d5a9a03"
* status = #completed
* medicationReference.reference = "#cont4"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Krebsleiden"
* dosage[0].text = "Dosage sample"
* dosage[+].sequence = 1
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 3600
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity = 10 'mL' "milliliter"
* dosage[+].sequence = 2
* dosage[=].timing.repeat.boundsPeriod.start = "2017-09-05"
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
* dosage[+].sequence = 3
* dosage[=].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when[0] = #MORN
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
* dosage[+].sequence = 4
* dosage[=].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when[0] = #MORN
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"