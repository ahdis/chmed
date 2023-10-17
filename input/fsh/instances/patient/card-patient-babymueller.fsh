Instance: card-patient-babymueller
InstanceOf: CHMEDPatientCard
Title: "Baby Müller"
Description: "Example of a Patient (CARD)"
Usage: #example
* identifier[LocalPid][+].type = $v2-0203#MR
* identifier[LocalPid][=].system = "urn:oid:2.999.1"
* identifier[LocalPid][=].value = "987654321"
* name.family = "Müller"
* name.given = "Baby"
* gender = #female
* birthDate = "2023-05-01"
* communication[languageOfCorrespondence].language = urn:ietf:bcp:47#de-CH "German (Switzerland)"
* communication[languageOfCorrespondence].preferred = true
