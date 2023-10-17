Instance: card1-medicationstatement-coantihyp
InstanceOf: CHMEDMedicationStatementCard
Title: "CARD 1 - CO-ANTIHYP"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = coantihyp
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c8c468e8-84a9-4b76-9040-3ca6523fabc3"
* status = #active
* medicationReference.reference = "#coantihyp"
* subject = Reference(card1-patient-petermuster)
* informationSource = Reference(practitionerrole-docteurcardiologie)
* reasonCode.text = "Bluthochdruck"

* dosage[baseEntry][0].timing.repeat.when = #MORN
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Stk"

