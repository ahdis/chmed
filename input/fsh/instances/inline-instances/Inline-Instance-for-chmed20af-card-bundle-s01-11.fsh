Instance: Inline-Instance-for-chmed20af-card-bundle-s01-11
InstanceOf: MedicationStatementCard
Usage: #inline
* id = "21"
* contained.resourceType = "Medication"
* contained.id = "cont1"
* contained.code = urn:oid:2.51.1.1#7680565130034 "MORPHIN HCL Amino Inj Lös 20 mg/ml"
* contained.code.text = "MORPHIN HCL Amino Inj Lös 20 mg/ml"
* contained.form = urn:oid:0.4.0.127.0.16.1.1.2.1#11201000 "Solution for injection"
* contained.ingredient.itemCodeableConcept = $sct#373529000 "Morphine (substance)"
* contained.ingredient.itemCodeableConcept.text = "Morphine"
* contained.ingredient.strength.numerator = 20 'mg' "milligram"
* contained.ingredient.strength.denominator = 1 'mL' "milliliter"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:aea087d7-5001-45ab-a341-2dfbc8e3f749"
* status = #completed
* medicationReference.reference = "#cont1"
* subject.reference = "Patient/7"
* informationSource.reference = "Practitioner/9"
* reasonCode.text = "Blutverdünnung"
* dosage[0].text = "Dosis jede Stunde 50 ml erhöhen"
* dosage[+].sequence = 1
* dosage[=].timing.repeat.count = 1
* dosage[=].timing.repeat.duration = 14400
* dosage[=].timing.repeat.durationUnit = #s
* dosage[=].timing.repeat.timeOfDay = "08:00:00"
* dosage[=].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[=].doseAndRate.doseQuantity.extension.url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-dosequantityto"
* dosage[=].doseAndRate.doseQuantity.extension.valueQuantity = 200 'mL' "milliliter"
* dosage[=].doseAndRate.doseQuantity = 50 'mL' "milliliter"