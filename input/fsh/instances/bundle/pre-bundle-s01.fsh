Instance: pre-bundle-s01
InstanceOf: CHMEDMedicationPrescriptionDocument
Title: "Medication Prescription Document - Sample 01"
Description: "Example for a Medication Prescription document (Bundle)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:645bb0c3-ff7e-4123-bef5-3852a4784813"
* type = #document
* timestamp = "2017-05-27T11:46:09+02:00"

* entry[0].fullUrl = "http://example.com/Composition/pre-composition-s01"
* entry[=].resource = pre-composition-s01

* entry[+].fullUrl = "http://example.com/Patient/pre-patient-s01"
* entry[=].resource = pre-patient-s01
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-s01"
* entry[=].resource = practitionerrole-s01
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-s01"
* entry[=].resource = practitioner-s01
* entry[+].fullUrl = "http://example.com/Organization/organization-s01"
* entry[=].resource = organization-s01

* entry[+].fullUrl = "http://example.com/MedicationRequest/pre-medicationrequest-s01-1-roaccutan"
* entry[=].resource = pre-medicationrequest-s01-1-roaccutan

* entry[+].fullUrl = "http://example.com/Binary/binary-pdf-example"
* entry[=].resource = binary-pdf-example