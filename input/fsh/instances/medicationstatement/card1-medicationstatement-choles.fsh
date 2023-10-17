Instance: card1-medicationstatement-choles
InstanceOf: CHMEDMedicationStatementCard
Title: "CARD 1 - CHOLES"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = choles
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:78bd33d8-d57a-40be-9025-1d7292b9a459"
* status = #active
* medicationReference.reference = "#choles"
* subject = Reference(card1-patient-petermuster)
* informationSource = Reference(practitionerrole-exampleclinique)
* reasonCode.text = "Cholesterinsenker"

* dosage[baseEntry][+].sequence = 1
* dosage[baseEntry][=].timing.repeat.when = #MORN
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 0.5 '{Piece}' "Stk"

* dosage[additionalEntry][+].sequence = 2
* dosage[additionalEntry][=].timing.repeat.when = #EVE
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Stk"
