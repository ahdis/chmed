Instance: Inline-Instance-for-chmed20af-pre-bundle-s01-5
InstanceOf: MedicationRequestPre
Usage: #inline
* id = "10"
* contained.resourceType = "Medication"
* contained.id = "cont1"
* contained.code = urn:oid:2.51.1.1#7680453070343 "ROACCUTAN Kaps 10 mg 30 Stk"
* contained.code.text = "ROACCUTAN Kaps 10 mg 30 Stk"
* contained.form = urn:oid:0.4.0.127.0.16.1.1.2.1#10210000 "Capsule, hard"
* contained.ingredient.itemCodeableConcept = $sct#387208003 "Isotretinoin (substance)"
* contained.ingredient.itemCodeableConcept.text = "Isotretinoin"
* contained.ingredient.strength.numerator = 10 'mg' "milligram"
* contained.ingredient.strength.denominator = 1 http://snomed.info/sct#732937005 "Capsule (unit of presentation)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0a7fba01-0c53-4f2a-90c7-ec7ea6a621e1"
* status = #completed
* intent = #order
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/7"
* dosageInstruction[0].text = "1 x ROACCUTAN Kaps 10 mg 30 Stk substitituion alllowed, 2x repeatable"
* dosageInstruction[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosageInstruction[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosageInstruction[=].timing.repeat.when = #MORN
* dosageInstruction[=].asNeededBoolean = true
* dosageInstruction[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosageInstruction[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
* dispenseRequest.numberOfRepeatsAllowed = 2
* dispenseRequest.quantity.value = 1
* substitution.allowedCodeableConcept = $v3-substanceAdminSubstitution#E "equivalent"