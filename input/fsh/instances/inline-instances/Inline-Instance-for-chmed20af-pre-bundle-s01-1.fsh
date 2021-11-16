Instance: Inline-Instance-for-chmed20af-pre-bundle-s01-1
InstanceOf: CompositionMedicationPrescription
Usage: #inline
* id = "5"
* language = #de-CH
* extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-versionnumber"
* extension[=].valueUnsignedInt = 1
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension[=].valueReference.reference = "Practitioner/9"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:645bb0c3-ff7e-4123-bef5-3852a4784813"
* status = #final
* type.coding[0] = $loinc#57833-6 "Prescription for medication"
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* subject.reference = "http://localhost:8080/r4/Patient/7"
* date = "2017-05-27T11:46:09+02:00"
* author.reference = "Practitioner/9"
* title = "Rezept"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* confidentiality = #N
* custodian.reference = "Organization/10"

* section[prescription].title = "Arzneimittelverordnung"
* section[prescription].code = $loinc#57828-6 "PRESCRIPTIONS"
* section[prescription].entry.reference = "MedicationRequest/10"

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/example-pdf\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/example-pdf"