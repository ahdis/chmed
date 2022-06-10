Instance: card-medicationstatement-s01-1-roaccutan
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - ROACCUTAN"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = s01-roaccutan
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#s01-roaccutan"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "Practitioner/practitioner-s01"
* reasonCode.text = "Akne"
* note.text = "1x morgens, bei Bedarf"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosage[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosage[=].timing.repeat.when = #MORN
* dosage[=].asNeededBoolean = true
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"