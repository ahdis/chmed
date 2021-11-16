Instance: chmed20af-card-medicationstatement-s01-3
InstanceOf: MedicationStatementCard
Title: "MedicationStatement (Card)"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = cont3
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:e85c2ec3-d4a4-499d-9e00-7360bee9ce6a"
* status = #completed
* medicationReference.reference = "#cont3"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* informationSource.reference = "Practitioner/chmed20af-practitioner-s01"
* reasonCode.text = "Bluthochdruck/Herz"
* dosage[0].text = "Morgens und abends je 1 Tablette"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when[0] = #MORN
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"