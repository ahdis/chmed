Instance: card-medicationstatement-s02-3-beloczok
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatment - BELOC ZOK (Split Dosage)"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = s01-3-beloczok
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:20014498-330f-4c7d-90aa-2686f641af8f"
* status = #completed
* medicationReference.reference = "#s01-3-beloczok"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "Practitioner/practitioner-s01"
* reasonCode.text = "Bluthochdruck/Herz"
* dosage[0].text = "1 Tablette morgens, 1/2 Tablette abends"
* dosage[+].sequence = 1
* dosage[=].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when = #MORN
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
* dosage[+].sequence = 2
* dosage[=].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 0.5 '{Piece}' "Piece"