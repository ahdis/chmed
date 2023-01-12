Instance: card-medicationstatement-tt-3-clexane
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - CLEXANE"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = tt-3-clexane
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bf418a1e-22fd-423a-85f0-50a70aaeed20"
* status = #completed
* medicationReference.reference = "#tt-3-clexane"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Blutverdünnung"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2017-09-07"
* dosage[baseEntry].timing.repeat.duration = 1
* dosage[baseEntry].timing.repeat.durationUnit = #d
* dosage[baseEntry].timing.repeat.frequency = 1
* dosage[baseEntry].timing.repeat.timeOfDay = "08:00:00"
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 40 'mg' "milligram"