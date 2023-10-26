Instance: dosage-example
InstanceOf: CHMEDMedicationStatementCard
Title: "Posology"
Description: "Example of a Dosage - eMedication Plan ChMed Posology Example"
Usage: #example
* contained = medication
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ed4f417e-2488-4588-b172-c394bde1d60e"
* status = #active
* medicationReference.reference = "#medication"
* subject = Reference(card1-patient-petermuster)

/* example 5.2 */
* dosage[baseEntry][+].additionalInstruction = $sct#307165006 "Before meal (qualifier value)"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.start = "2023-07-13"
* dosage[baseEntry][=].timing.repeat.boundsPeriod.end = "2023-08-13"
* dosage[baseEntry][=].asNeededBoolean = false


/* example 6.1 daily -> normal dosage
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#1 "Daily"
* dosage[baseEntry][=].timing.repeat.when[+] = #MORN
* dosage[baseEntry][=].timing.repeat.when[+] = #EVE
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 6.1 daily -> split dosage
* dosage[baseEntry][+].sequence = 0
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#1 "Daily"
* dosage[baseEntry][=].timing.repeat.when = #MORN
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1.5 '{Piece}' "Piece"
* dosage[additionalEntry][+].sequence = 0
* dosage[additionalEntry][=].timing.repeat.when = #EVE
* dosage[additionalEntry][=].doseAndRate.doseQuantity = 2 '{Piece}' "Piece"
*/

/* example 6.2. free text
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#2 "FreeText"
* dosage[baseEntry][=].patientInstruction = "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor."
*/

/* example 6.3 single
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#3 "Single"
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 6.4 cyclic 
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#4 "Cyclic"
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"
* dosage[baseEntry][=].timing.repeat.frequency = 2
* dosage[baseEntry][=].timing.repeat.period = 5
* dosage[baseEntry][=].timing.repeat.periodUnit = #wk
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 6.5 sequence 
* dosage[baseEntry][+].sequence = 1
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#5 "Sequence"
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-posology-detail-object-type#4 "Cyclic"
* dosage[baseEntry][=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"
* dosage[baseEntry][=].timing.repeat.count = 21
* dosage[baseEntry][=].timing.repeat.frequency = 1
* dosage[baseEntry][=].timing.repeat.period = 1
* dosage[baseEntry][=].timing.repeat.periodUnit = #d
* dosage[baseEntry][=].doseAndRate.doseQuantity[+].value = 1
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].code = #732936001
* dosage[additionalEntry][+].sequence = 2
* dosage[additionalEntry][=].timing.repeat.count = 7
* dosage[additionalEntry][=].timing.repeat.frequency = 1
* dosage[additionalEntry][=].timing.repeat.period = 1
* dosage[additionalEntry][=].timing.repeat.periodUnit = #d
* dosage[additionalEntry][=].doseAndRate.doseQuantity[+].value = 0
* dosage[additionalEntry][=].doseAndRate.doseQuantity[=].unit = "Tablet (unit of presentation)"
* dosage[additionalEntry][=].doseAndRate.doseQuantity[=].system = "http://snomed.info/sct"
* dosage[additionalEntry][=].doseAndRate.doseQuantity[=].code = #732936001
*/

/* example 7.1 dosage only 
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#1 "DosageOnly"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 7.2 times 
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#2 "Times"
* dosage[baseEntry][=].timing.repeat.timeOfDay = "08:00:00"
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 7.3 day segments
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#3 "DaySegments"
* dosage[baseEntry][=].timing.repeat.when = #EVE
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 7.4 week days
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#4 "WeekDays"
* dosage[baseEntry][=].timing.repeat.dayOfWeek[+] = #mon
* dosage[baseEntry][=].timing.repeat.dayOfWeek[+] = #wed
* dosage[baseEntry][=].timing.repeat.dayOfWeek[+] = #fri
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 7.5 days of month
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#5 "DaysOfMonth"
* dosage[baseEntry][=].timing.repeat.extension[+].url = "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth"
* dosage[baseEntry][=].timing.repeat.extension[=].valuePositiveInt = 1
* dosage[baseEntry][=].timing.repeat.extension[+].url = "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth"
* dosage[baseEntry][=].timing.repeat.extension[=].valuePositiveInt = 15
* dosage[baseEntry][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 7.6 interval
* dosage[baseEntry][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type"
* dosage[baseEntry][=].extension[=].valueCoding = $chmed-cs-timed-dosage-object-type#6 "Interval"
* dosage[baseEntry][=].maxDosePerPeriod.numerator = 1 '{Piece}' "Piece"
* dosage[baseEntry][=].maxDosePerPeriod.denominator = 6 'h' "Hour"
*/

/* example 8.1 dosage simple
* dosage[baseEntry][+].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

/* example 8.2 dosage from to
* dosage[baseEntry][+].doseAndRate.doseQuantity[+] = 5 'mL' "milliliter"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-dose-quantity-to"
* dosage[baseEntry][=].doseAndRate.doseQuantity[=].extension[=].valueQuantity = 10 'mL' "milliliter"
* dosage[baseEntry][=].timing.repeat.duration = 45
* dosage[baseEntry][=].timing.repeat.durationUnit = #min
*/

/* example 8.3 range
* dosage[baseEntry][+].doseAndRate.doseRange.low = 1.0 '{Piece}' "Piece"
* dosage[baseEntry][=].doseAndRate.doseRange.high = 3.0 '{Piece}' "Piece"
*/
