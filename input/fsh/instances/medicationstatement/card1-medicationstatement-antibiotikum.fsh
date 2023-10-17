Instance: card1-medicationstatement-antibiotikum
InstanceOf: CHMEDMedicationStatementCard
Title: "CARD 1 - ANTIBIOTIKUM"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = antibiotikum
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:aee4da37-8d10-413f-a473-ff74c2b1b3ec"
* status = #active
* medicationReference.reference = "#antibiotikum"
* subject = Reference(card1-patient-petermuster)
* informationSource = Reference(practitionerrole-franznotfall)
* reasonCode.text = "Infektion"

* dosage[baseEntry][0].patientInstruction = "nach dem Essen"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2023-02-09"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2023-02-19"
* dosage[baseEntry][=].timing.repeat.when[0] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Stk"
