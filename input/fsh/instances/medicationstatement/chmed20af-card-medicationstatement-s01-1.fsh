Instance: chmed20af-card-medicationstatement-s01-1
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = cont1
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Akne"
* dosage[0].text = "bei Bedarf"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosage[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosage[=].timing.repeat.when = #MORN
* dosage[=].asNeededBoolean = true
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"