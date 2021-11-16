Instance: chmed20af-pre-bundle-s01
InstanceOf: MedicationPrescriptionDocument
Title: "Medication Prescription document"
Description: "Example for Medication Prescription document"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:645bb0c3-ff7e-4123-bef5-3852a4784813"
* type = #document
* timestamp = "2017-05-27T11:46:09+02:00"
* entry[0].fullUrl = "http://localhost:8080/r4/Composition/5"
* entry[=].resource = Inline-Instance-for-chmed20af-pre-bundle-s01-1
* entry[+].fullUrl = "http://localhost:8080/r4/Patient/7"
* entry[=].resource = Inline-Instance-for-chmed20af-pre-bundle-s01-2
* entry[+].fullUrl = "http://localhost:8080/r4/Practitioner/9"
* entry[=].resource = Inline-Instance-for-chmed20af-pre-bundle-s01-3
* entry[+].fullUrl = "http://localhost:8080/r4/Organization/10"
* entry[=].resource = Inline-Instance-for-chmed20af-pre-bundle-s01-4
* entry[+].fullUrl = "http://localhost:8080/r4/MedicationRequest/10"
* entry[=].resource = Inline-Instance-for-chmed20af-pre-bundle-s01-5
* entry[+].fullUrl = "http://localhost:8080/r4/Binary/example-pdf"
* entry[=].resource = example-pdf