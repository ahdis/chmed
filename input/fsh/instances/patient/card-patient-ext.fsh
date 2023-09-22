Instance: card-patient-ext
InstanceOf: CHMEDPatientCard
Title: "Maxima Matter (Ext)"
Description: "Example for a Patient (CARD) with the private field extension included"
Usage: #example
* extension.extension[0].url = "name"
* extension.extension[=].valueString = "Private Field Name Sample"
* extension.extension[+].url = "value"
* extension.extension[=].valueString = "Private Field Value Sample"
* extension.url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-private-field"
* identifier[LocalPid][+].type = $v2-0203#MR
* identifier[LocalPid][=].system = "urn:oid:2.999.1"
* identifier[LocalPid][=].value = "12345678"
* identifier[insuranceCardNumber][+].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber][=].value = "80756012340245213019"
* name.family = "Matter"
* name.given = "Maxima"
* telecom[phone][+].system = #phone
* telecom[phone][=].value = "+41588512600"
* gender = #female
* birthDate = "1981-01-12"
* address.line = "Untermattweg 8"
* address.city = "Bern"
* address.postalCode = "3027"
* communication[languageOfCorrespondence].language = urn:ietf:bcp:47#de-CH "German (Region=Switzerland)"
* communication[languageOfCorrespondence].preferred = true