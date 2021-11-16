Instance: chmed20af-card-composition-s01
InstanceOf: CompositionMedicationCard
Title: "Medication Card Composition"
Description: "Example for Medication Card Composition"
Usage: #example
* language = #de-CH
* extension[0].extension[0].url = "name"
* extension[=].extension[=].valueString = "PrivateFieldNameSample1"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "PrivateFieldValueSample1"
* extension[=].url = "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-privatefield"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-versionnumber"
* extension[=].valueUnsignedInt = 1
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension[=].valueReference.reference = "Practitioner/chmed20af-practitioner-s01"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f6"
* status = #final
* type = $sct#721912009 "Medication summary document (record artifact)"
* subject.reference = "Patient/chmed20af-card-patient-s01"
* date = "2016-09-12T11:46:09+02:00"
* author.reference = "Practitioner/chmed20af-practitioner-s01"
* title = "Medikationsplan"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* confidentiality = #N
* attester.mode = #professional
* attester.time = "2016-09-12T11:46:09+02:00"
* attester.party.reference = "Practitioner/chmed20af-practitioner-s01"
* custodian.reference = "Organization/chmed20af-custodian-s01"

* section[card].title = "Medikamentenliste"
* section[card].code = $loinc#10160-0 "History of medication use"
* section[card].entry[0].reference = "MedicationStatement/chmed20af-card-medicationstatement-s01-1"
* section[card].entry[+].reference = "MedicationStatement/chmed20af-card-medicationstatement-s01-2"
* section[card].entry[+].reference = "MedicationStatement/chmed20af-card-medicationstatement-s01-3"
* section[card].entry[+].reference = "MedicationStatement/chmed20af-card-medicationstatement-s01-4"
* section[card].entry[+].reference = "MedicationStatement/chmed20af-card-medicationstatement-tt-5-morphin"

* section[healthconcerns].title = "Gesundheitsbelange"
* section[healthconcerns].code = $loinc#75310-3 "Health Concerns"
* section[healthconcerns].entry[bodyweight].reference = "Observation/chmed20af-card-observation-s01-bodyweight"
* section[healthconcerns].entry[bodyheight].reference = "Observation/chmed20af-card-observation-s01-bodyheight"
* section[healthconcerns].entry[dlstmen].reference = "Observation/chmed20af-observation-s01-dateoflastmenustration"
* section[healthconcerns].entry[prematurebaby].reference = "Observation/chmed20af-observation-s01-prematurebaby"
* section[healthconcerns].entry[timeofgestation].reference = "Observation/chmed20af-observation-s01-timeofgestation"
* section[healthconcerns].entry[risks].reference = "Condition/chmed20af-card-condition-s01-1"
* section[healthconcerns].entry[risks].reference = "Condition/chmed20af-card-condition-s01-2"
* section[healthconcerns].entry[risks].reference = "Condition/chmed20af-card-condition-s01-3"
* section[healthconcerns].entry[risks].reference = "Condition/chmed20af-card-condition-s01-4"
* section[healthconcerns].entry[risks].reference = "Condition/chmed20af-card-condition-s01-5"
* section[healthconcerns].entry[risks].reference = "Condition/chmed20af-card-condition-s01-6"

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/example-pdf\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/example-pdf"