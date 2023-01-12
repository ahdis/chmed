Instance: card-medicationstatement-s01-3-beloczok
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatment - BELOC ZOK (Normal Dosage)"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = s01-3-beloczok
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e85c2ec3-d4a4-499d-9e00-7360bee9ce6a"
* status = #completed
* medicationReference.reference = "#s01-3-beloczok"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "PractitionerRole/practitionerrole-s01"
* reasonCode.text = "Bluthochdruck/Herz"
* note.text = "Morgens und abends je 1 Tablette"
* dosage[baseEntry].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[baseEntry].timing.repeat.when[0] = #MORN
* dosage[baseEntry].timing.repeat.when[+] = #EVE
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"