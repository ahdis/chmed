Instance: chmed20af-pre-medicationrequest-s01-1
InstanceOf: MedicationRequestPre
Title: "MedicationRequest"
Description: "Example for a MedicationReqeust"
Usage: #example
* contained = cont1
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fc52f16f-e23a-4e6c-aa45-8daafaba6c8a"
* status = #completed
* intent = #order
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* dosageInstruction[0].text = "1 x ROACCUTAN Kaps 10 mg 30 Stk substitituion alllowed, 2x repeatable"
* dosageInstruction[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosageInstruction[=].timing.repeat.when = #MORN
* dosageInstruction[=].asNeededBoolean = true
* dosageInstruction[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
* dispenseRequest.numberOfRepeatsAllowed = 2
* dispenseRequest.quantity = 1 '{Package}' "Package"
* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#E "equivalent"
