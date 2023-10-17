Instance: pre1-bundle-s01
InstanceOf: CHMEDMedicationPrescriptionDocument
Title: "PRE 1 - Bundle"
Description: "Example of a Bundle - Medication Prescription document for the first medication (ANTIBIOTIKUM) in the eMediplan sample shown in the IG (Home)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17cd3fd9-9ad1-4b2c-998a-c2ad240e84ef"
* type = #document
* timestamp = "2023-02-09T09:32:32+01:00"

* entry[0].fullUrl = "http://example.com/Composition/pre1-composition"
* entry[=].resource = pre1-composition

* entry[+].fullUrl = "http://example.com/Patient/pre1-patient-petermuster"
* entry[=].resource = pre1-patient-petermuster
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-franznotfall"
* entry[=].resource = practitionerrole-franznotfall
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-notfranz"
* entry[=].resource = practitioner-notfranz
* entry[+].fullUrl = "http://example.com/Organization/organization-notfall"
* entry[=].resource = organization-notfall

* entry[+].fullUrl = "http://example.com/MedicationRequest/pre1-medicationrequest-antibiotikum"
* entry[=].resource = pre1-medicationrequest-antibiotikum

* entry[+].fullUrl = "http://example.com/Binary/binary-pdf-example"
* entry[=].resource = binary-pdf-example