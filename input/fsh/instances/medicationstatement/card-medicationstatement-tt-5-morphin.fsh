Instance: card-medicationstatement-tt-5-morphin
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - MORPHIN"
Description: "Example for a MedicationStatement (Card)"
Usage: #example
* contained = tt-5-morphin
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dd8fc692-c177-46d1-817c-4ba2029a8e01"
* status = #completed
* medicationReference.reference = "#tt-5-morphin"
* subject.reference = "Patient/card-patient-s01"
* informationSource.reference = "Practitioner/practitioner-s01"
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