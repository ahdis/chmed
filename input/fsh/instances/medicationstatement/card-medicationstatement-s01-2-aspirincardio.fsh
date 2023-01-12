Instance: card-medicationstatement-s01-2-aspirincardio
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - ASPIRIN CARDIO"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = s01-2-aspirincardio
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:3cb3f6c5-b268-4952-a9db-ccd6caa53647"
* status = #completed
* medicationReference.reference = "#s01-2-aspirincardio"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "Practitioner/practitioner-s01"
* reasonCode.text = "Blutverdünnung"
* note.text = "1 Tablette morgens"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosage[baseEntry].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosage[baseEntry].timing.repeat.when = #MORN
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"