Instance: chmed20af-pre-composition-s01
InstanceOf: CompositionMedicationPrescription
Title: "Medication Prescription Composition"
Description: "Example for Medication Prescription Composition"
Usage: #example
* language = #de-CH
* extension[0].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-versionnumber"
* extension[=].valueUnsignedInt = 1
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension[=].valueReference.reference = "Practitioner/chmed20af-practitioner-s01"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:645bb0c3-ff7e-4123-bef5-3852a4784813"
* status = #final
* type = $sct#761938008 "Medical Prescription record (record artifact)"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* date = "2017-05-27T11:46:09+02:00"
* author.reference = "Practitioner/chmed20af-practitioner-s01"
* title = "Rezept"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* confidentiality = #N
* custodian.reference = "Organization/chmed20af-custodian-s01"
* section[prescription].title = "Arzneimittelverordnung"
* section[prescription].code = $loinc#57828-6 "PRESCRIPTIONS"
* section[prescription].entry.reference = "MedicationRequest/chmed20af-pre-medicationrequest-s01-1"
* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"
* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/example-pdf\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/example-pdf"