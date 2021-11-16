Instance: chmed20af-card-medicationstatement-s01-2
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = cont2
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3cb3f6c5-b268-4952-a9db-ccd6caa53647"
* status = #completed
* medicationReference.reference = "#cont2"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Blutverdünnung"
* dosage[0].text = "1 Tablette morgens"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosage[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosage[=].timing.repeat.when = #MORN
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"