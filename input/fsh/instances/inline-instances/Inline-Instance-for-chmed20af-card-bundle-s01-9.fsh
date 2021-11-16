Instance: Inline-Instance-for-chmed20af-card-bundle-s01-9
InstanceOf: MedicationStatementCard
Usage: #inline
* id = "13"
* contained.resourceType = "Medication"
* contained.id = "cont3"
* contained.code = urn:oid:2.51.1.1#7680521101573 "BELOC ZOK Ret Tabl 25 mg 30 Stk"
* contained.code.text = "BELOC ZOK Ret Tabl 25 mg 30 Stk"
* contained.form = urn:oid:0.4.0.127.0.16.1.1.2.1#10226000 "Prolonged-release tablet"
* contained.ingredient.itemCodeableConcept = $sct#372826007 "Metoprolol (substance)"
* contained.ingredient.itemCodeableConcept.text = "Metoprolol"
* contained.ingredient.strength.numerator = 25 'mg' "milligram"
* contained.ingredient.strength.denominator = 1 http://snomed.info/sct#732936001 "Tablet (unit of presentation)"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:fbaa527c-8efa-40d7-8ef8-ea793fbc21ea"
* status = #completed
* medicationReference.reference = "#cont3"
* subject.reference = "Patient/7"
* informationSource.reference = "Practitioner/9"
* reasonCode.text = "Bluthochdruck/Herz"
* dosage[0].text = "Morgens und abends je 1 Tablette"
* dosage[+].timing.repeat.boundsPeriod.start = "2016-02-10"
* dosage[=].timing.repeat.when[0] = #MORN
* dosage[=].timing.repeat.when[+] = #EVE
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20053000 "Oral use"
* dosage[=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"