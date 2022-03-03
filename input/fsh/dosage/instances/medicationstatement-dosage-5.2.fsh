Instance: card-medicationstatement-dosage-5.2
InstanceOf: CHMEDMedicationStatementCard
Title: "MedicationStatement - Dosage FreeText"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[nonstructured][+].extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-object-type"
* dosage[nonstructured][=].extension[=].valueCoding = $chmed-cs-posology-object-type#2 "FreeText"

* dosage[nonstructured][=].text = "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor."

