Instance: Inline-Instance-for-chmed20af-card-bundle-s01-10
InstanceOf: MedicationStatementCard
Usage: #inline
* id = "14"
* contained.resourceType = "Medication"
* contained.id = "cont4"
* contained.code = urn:oid:2.51.1.1#7680497420456 "ZOCOR Filmtabl 20 mg 28 Stk"
* contained.code.text = "ZOCOR Filmtabl 20 mg 28 Stk"
* contained.form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"
* contained.ingredient.itemCodeableConcept = $sct#387584000 "Simvastatin (substance)"
* contained.ingredient.itemCodeableConcept.text = "Simvastatin"
* contained.ingredient.strength.numerator = 20 'mg' "milligram"
* contained.ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26cbe5de-50a6-4f44-a210-6c2c70c60ea7"
* status = #completed
* medicationReference.reference = "#cont4"
* subject.reference = "Patient/7"
* informationSource.reference = "Practitioner/9"
* reasonCode.text = "Cholesterinsenker"
* dosage[0].text = "1 Tablette abends"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"