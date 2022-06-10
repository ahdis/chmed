Instance: pre-medicationrequest-s01-1-roaccutan
InstanceOf: CHMEDMedicationRequestPre
Title: "MedicationRequest - ROACCUTAN"
Description: "Example for a MedicationRequest (Pre)"
Usage: #example
* contained = s01-roaccutan
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fc52f16f-e23a-4e6c-aa45-8daafaba6c8a"
* status = #completed
* intent = #order
* medicationReference.reference = "#s01-roaccutan"
* subject.reference = "Patient/card-patient-s01"
* note.text = "1 x ROACCUTAN Kaps 10 mg 30 Stk substitution allowed, 2x repeatable"
* dosageInstruction[structurednormal].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosageInstruction[structurednormal].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosageInstruction[structurednormal].timing.repeat.when = #MORN
* dosageInstruction[structurednormal].asNeededBoolean = true
* dosageInstruction[structurednormal].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[structurednormal].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
* dispenseRequest.numberOfRepeatsAllowed = 2
* dispenseRequest.quantity = 1 '{Package}' "Package"
* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#E "equivalent"
