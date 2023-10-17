Instance: card1-medicationstatement-essigwickel
InstanceOf: CHMEDMedicationStatementCard
Title: "CARD 1 - ESSIGWICKEL"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = essigwickel
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2a0e7485-14ec-40ca-9012-f5eaf6f1eb1c"
* status = #active
* medicationReference.reference = "#essigwickel"
* subject = Reference(card1-patient-petermuster)
* informationSource = Reference(card1-patient-petermuster)
* reasonCode.text = "Fieber"

* dosage[baseEntry][0].patientInstruction = "bei Bedarf"
* dosage[baseEntry][=].asNeededBoolean = true

