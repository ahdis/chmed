Instance: card-patient-ext
InstanceOf: CHMED20AFPatientCard
Title: "Maxima Matter (Ext)"
Description: "Example for a Patient (Card) with the private field extension included"
Usage: #example
* extension.extension[0].url = "name"
* extension.extension[=].valueString = "PrivateFieldNameSample"
* extension.extension[+].url = "value"
* extension.extension[=].valueString = "PrivateFieldValueSample"
* extension.url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-privatefield"
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
* communication.language = urn:ietf:bcp:47#de-CH "German (Region=Switzerland)"
* communication.preferred = true