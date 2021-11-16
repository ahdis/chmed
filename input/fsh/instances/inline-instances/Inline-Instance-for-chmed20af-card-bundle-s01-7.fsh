Instance: Inline-Instance-for-chmed20af-card-bundle-s01-7
InstanceOf: MedicationStatementCard
Usage: #inline
* id = "11"
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
* identifier.value = "urn:uuid:7489bc8a-2342-409d-b4c5-083a2707a12e"
* status = #completed
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/7"
* informationSource.reference = "Practitioner/9"
* reasonCode.text = "Akne"
* dosage[0].text = "bei Bedarf"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosage[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosage[=].timing.repeat.when = #MORN
* dosage[=].asNeededBoolean = true
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"