Instance: card-patient-ext
InstanceOf: CHMEDPatientCard
Title: "Maxima Matter (Ext)"
Description: "Example for a Patient (Card) with the private field extension included"
Usage: #example
* extension.extension[0].url = "name"
* extension.extension[=].valueString = "Private Field Name Sample"
* extension.extension[+].url = "value"
* extension.extension[=].valueString = "Private Field Value Sample"
* extension.url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-private-field"
* identifier.type = $v2-0203#MR
* identifier.system = "urn:oid:2.999.1"
* identifier.value = "12345678"
* name.family = "Matter"
* name.given = "Maxima"
* telecom.system = #phone
* telecom.value = "+41588512600"
* telecom.use = #home
* gender = #female
* birthDate = "1981-01-12"
* address.line = "Untermattweg 8"
* address.city = "Bern"
* address.postalCode = "3027"
* communication[languageOfCorrespondence].language = urn:ietf:bcp:47#de-CH "German (Region=Switzerland)"
* communication[languageOfCorrespondence].preferred = true