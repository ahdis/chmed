Instance: pre-composition-s01
InstanceOf: CHMEDCompositionMedicationPrescription
Title: "Medication Prescription Composition"
Description: "Example for a Composition (Pre)"
Usage: #example
* language = #de-CH

* extension[receiver].valueString = "7601003178999"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:645bb0c3-ff7e-4123-bef5-3852a4784813"
* status = #final
* type.coding[0] = $loinc#57833-6 "Prescription for medication"
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* subject.reference = "Patient/pre-patient-s01"
* date = "2017-05-27T11:46:09+02:00"
* author[person].reference = "PractitionerRole/practitionerrole-s01"
* title = "Rezept"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N
* custodian.reference = "Organization/organization-s01"

* section[prescription].title = "Arzneimittelverordnung"
* section[prescription].code = $loinc#57828-6 "PRESCRIPTIONS"
* section[prescription].entry.reference = "MedicationRequest/pre-medicationrequest-s01-1-roaccutan"

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/binary-pdf-example\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/binary-pdf-example"