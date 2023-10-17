Instance: card-patient-maximamatter
InstanceOf: CHMEDPatientCard
Title: "Maxima Matter"
Description: "Example of a Patient (CARD)"
Usage: #example
* identifier[LocalPid][+].type = $v2-0203#MR
* identifier[LocalPid][=].system = "urn:oid:2.999.1"
* identifier[LocalPid][=].value = "12345678"
* identifier[insuranceCardNumber][+].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber][=].value = "80756012340245213019"
* name.family = "Matter"
* name.given = "Maxima"
* telecom[phone][0].system = #phone
* telecom[phone][=].value = "+41588512600"
* telecom[phone][+].system = #phone
* telecom[phone][=].value = "079 851 26 00"
* telecom[email][+].system = #email
* telecom[email][=].value = "maxima.matter@example.ch"
* gender = #female
* birthDate = "1981-01-12"
* address.line = "Untermattweg 8"
* address.city = "Bern"
* address.postalCode = "3027"
* communication[languageOfCorrespondence].language = urn:ietf:bcp:47#fr-CH "French (Switzerland)"
* communication[languageOfCorrespondence].preferred = true

* extension.url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-extension"
* extension.extension[0].url = "nm"
* extension.extension[=].valueString = "'The name of the field'"
* extension.extension[+].url = "schema"
* extension.extension[=].valueString = "'The schema used to determine how to interpret the extension'"
* extension.extension[+].url = "val"
* extension.extension[=].valueString = "'The value of the field'"

* extension.extension[+].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-extension"
* extension.extension[=].extension[0].url = "nm"
* extension.extension[=].extension[=].valueString = "'Nested extension: The name of the field'"
* extension.extension[=].extension[+].url = "schema"
* extension.extension[=].extension[=].valueString = "'Nested extension: The schema used to determine how to interpret the extension'"
* extension.extension[=].extension[+].url = "val"
* extension.extension[=].extension[=].valueString = "'Nested extension: The value of the field'"


