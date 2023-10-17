Instance: pre1-patient-petermuster
InstanceOf: CHMEDPatientPre
Title: "PRE 1 - Peter Muster"
Description: "Example of a Patient (PRE)"
Usage: #example
* identifier[LocalPid][+].type = $v2-0203#MR
* identifier[LocalPid][=].system = "urn:oid:2.999.1"
* identifier[LocalPid][=].value = "12345678"
* identifier[insuranceCardNumber][+].system = "urn:oid:2.16.756.5.30.1.123.100.1.1.1"
* identifier[insuranceCardNumber][=].value = "80756012340245213019"
* name.family = "Muster"
* name.given = "Peter"
* telecom[phone][+].system = #phone
* telecom[phone][=].value = "+41 79 123 45 67"
* gender = #male
* birthDate = "1943-11-01"
* address.line = "Bergstrasse 14"
* address.city = "Waldlichtung"
* address.postalCode = "9299"
