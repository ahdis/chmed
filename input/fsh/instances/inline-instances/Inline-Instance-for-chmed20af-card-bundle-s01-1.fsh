Instance: Inline-Instance-for-chmed20af-card-bundle-s01-1
InstanceOf: CompositionMedicationCard
Usage: #inline
* id = "3"
* language = #de-CH
* extension[0].extension[0].url = "name"
* extension[=].extension[=].valueString = "PrivateFieldNameSample1"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "PrivateFieldValueSample1"
* extension[=].url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-privatefield"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-versionnumber"
* extension[=].valueUnsignedInt = 1
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension[=].valueReference.reference = "Practitioner/9"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f6"
* status = #final
* type.coding[0] = $loinc#56445-0 "Medication summary"
* type.coding[+] = $sct#721912009 "Medication summary document (record artifact)"
* subject.reference = "http://localhost:8080/r4/Patient/7"
* date = "2016-09-12T11:46:09+02:00"
* author.reference = "Practitioner/9"
* title = "Medikationsplan"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2016-09-12T11:46:09+02:00"
* attester.party.reference = "Practitioner/9"
* custodian.reference = "Organization/10"

* section[card].title = "Medikamentenliste"
* section[card].code = $loinc#10160-0 "History of medication use"
* section[card].entry[0].reference = "MedicationStatement/11"
* section[card].entry[+].reference = "MedicationStatement/12"
* section[card].entry[+].reference = "MedicationStatement/13"
* section[card].entry[+].reference = "MedicationStatement/14"
* section[card].entry[+].reference = "MedicationStatement/21"

* section[healthconcerns].title = "Gesundheitsbelange"
* section[healthconcerns].code = $loinc#75310-3 "Health Concerns"
* section[healthconcerns].entry[0].reference = "Observation/24"
* section[healthconcerns].entry[+].reference = "Observation/23"
* section[healthconcerns].entry[+].reference = "Observation/25"
* section[healthconcerns].entry[+].reference = "Observation/26"
* section[healthconcerns].entry[+].reference = "Observation/27"
* section[healthconcerns].entry[+].reference = "Condition/28"
* section[healthconcerns].entry[+].reference = "Condition/29"
* section[healthconcerns].entry[+].reference = "Condition/30"
* section[healthconcerns].entry[+].reference = "Condition/31"
* section[healthconcerns].entry[+].reference = "Condition/32"
* section[healthconcerns].entry[+].reference = "Condition/33"

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/example-pdf\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/example-pdf"