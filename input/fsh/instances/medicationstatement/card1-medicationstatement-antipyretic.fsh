Instance: card1-medicationstatement-antipyretic
InstanceOf: CHMEDMedicationStatementCard
Title: "CARD 1 - ANTIPYRETIC"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = antipyretic
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d11ef4fd-829f-4645-b51e-2028eae143bc"
* status = #active
* medicationReference.reference = "#antipyretic"
* subject = Reference(card1-patient-petermuster)
* informationSource = Reference(card1-patient-petermuster)
* reasonCode.text = "Schmerzen"

* dosage[baseEntry][0].patientInstruction = "bis zu max. 4 mal täglich 1 Tablette einnehmen"
* dosage[baseEntry][=].asNeededBoolean = true
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
