Instance: chmed20af-card-medicationstatement-s01-4
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = cont4
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:47d40ed5-05fc-49f6-b7d8-3ee7d31022cc"
* status = #completed
* medicationReference.reference = "#cont4"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Cholesterinsenker"
* dosage[0].text = "1 Tablette abends"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"