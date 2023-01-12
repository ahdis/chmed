Instance: card-medicationstatement-tt-5-morphin
InstanceOf: CHMEDMedicationStatementCard
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
* note.text = "Dosis jede Stunde 50 ml erhöhen"
* dosage[baseEntry].timing.repeat.count = 1
* dosage[baseEntry].timing.repeat.duration = 14400
* dosage[baseEntry].timing.repeat.durationUnit = #s
* dosage[baseEntry].timing.repeat.timeOfDay = "08:00:00"
* dosage[baseEntry].route = urn:oid:0.4.0.127.0.16.1.1.2.1#20045000 "Intravenous use"
* dosage[baseEntry].doseAndRate.doseQuantity.extension.url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-dose-quantity-to"
* dosage[baseEntry].doseAndRate.doseQuantity.extension.valueQuantity = 200 'mL' "milliliter"
* dosage[baseEntry].doseAndRate.doseQuantity = 50 'mL' "milliliter"