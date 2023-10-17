Instance: card1-medicationstatement-antikrampf
InstanceOf: CHMEDMedicationStatementCard
Title: "CARD 1 - ANTIKRAMPF"
Description: "Example of a MedicationStatement"
Usage: #example
* contained = antikrampf
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:43117218-8598-491f-8ca0-5302bb2c6fb5"
* status = #active
* medicationReference.reference = "#antikrampf"
* subject = Reference(card1-patient-petermuster)
* informationSource = Reference(practitionerrole-rezeptpraxis)
* reasonCode.text = "Beruhigung"

* dosage[baseEntry][0].patientInstruction = "nur i.m., nur durch instruierte Personen!"
* dosage[baseEntry][=].timing.repeat.when = #MORN
* dosage[baseEntry][=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20035000 "Intramuscular use"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 2 'mL' "ml"
