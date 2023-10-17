Instance: pre1-medicationrequest-antibiotikum
InstanceOf: CHMEDMedicationRequestPre
Title: "PRE 1 - ANTIBIOTIKUM"
Description: "Example of a MedicationRequest"
Usage: #example
* extension[sic].valueBoolean = true
* contained = antibiotikum
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17cd3fd9-9ad1-4b2c-998a-c2ad240e84ef"
* status = #active
* intent = #order
* medicationReference.reference = "#antibiotikum"
* subject = Reference(pre1-patient-petermuster)

* dosageInstruction[baseEntry][0].patientInstruction = "nach dem Essen"
* dosageInstruction[baseEntry][=].timing.repeat.boundsPeriod.start = "2023-02-09"
* dosageInstruction[baseEntry][=].timing.repeat.boundsPeriod.end = "2023-02-19"
* dosageInstruction[baseEntry][=].timing.repeat.when[0] = #MORN
* dosageInstruction[baseEntry][=].timing.repeat.when[+] = #EVE
* dosageInstruction[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Stk"
