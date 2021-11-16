Instance: Inline-Instance-for-chmed20af-card-bundle-s01-8
InstanceOf: MedicationStatementCard
Usage: #inline
* id = "12"
* contained.resourceType = "Medication"
* contained.id = "cont2"
* contained.code = urn:oid:2.51.1.1#7680517950680 "ASPIRIN CARDIO Filmtabl 100 mg 28 Stk"
* contained.code.text = "ASPIRIN CARDIO Filmtabl 100 mg 28 Stk"
* contained.form = urn:oid:0.4.0.127.0.16.1.1.2.1#10221000 "Film-coated tablet"
* contained.ingredient.itemCodeableConcept = $sct#387458008 "Aspirin (substance)"
* contained.ingredient.itemCodeableConcept.text = "Aspirin"
* contained.ingredient.strength.numerator = 100 'mg' "milligram"
* contained.ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:aa48a9af-0229-4432-8791-af66e86d4ada"
* status = #completed
* medicationReference.reference = "#cont2"
* subject.reference = "Patient/7"
* informationSource.reference = "Practitioner/9"
* reasonCode.text = "Blutverdünnung"
* dosage[0].text = "1 Tablette morgens"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-09-12"
* dosage[=].timing.repeat.boundsPeriod.end = "2020-09-12"
* dosage[=].timing.repeat.when = #MORN
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"