Instance: card-medicationstatement-s01-4-zocor
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - ZOCOR"
Description: "Example for a MedicationStatement (CARD)"
Usage: #example
* contained = s01-4-zocor
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:47d40ed5-05fc-49f6-b7d8-3ee7d31022cc"
* status = #completed
* medicationReference.reference = "#s01-4-zocor"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Cholesterinsenker"
* note.text = "1 Tablette abends"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[baseEntry].timing.repeat.when = #EVE
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"