Instance: card-composition-s01
InstanceOf: CHMEDCompositionMedicationCard
Title: "Medication Card Composition - Sample 01"
Description: "Example for a  Composition (Card)"
Usage: #example
* language = #de-CH
* extension[0].extension[0].url = "name"
* extension[=].extension[=].valueString = "Private Field Name Sample 1"
* extension[=].extension[+].url = "value"
* extension[=].extension[=].valueString = "Private Field Value Sample 1"
* extension[=].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-private-field"
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-versionnumber"
* extension[=].valueUnsignedInt = 1
* extension[+].url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-informationrecipient"
* extension[=].valueReference.reference = "Practitioner/practitioner-s01"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f6"
* status = #final
* type = $sct#721912009 "Medication summary document (record artifact)"
* subject.reference = "Patient/card-patient-s01"
* date = "2016-09-12T11:46:09+02:00"
* author.reference = "Practitioner/practitioner-s01"
* author.extension[authorRole].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-author-role"
* author.extension[authorRole].valueCoding = urn:oid:2.16.756.5.30.1.127.3.10.6#HCP "Healthcare professional"
* title = "Medikationsplan"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normally accessible"
* confidentiality = #N

* custodian.reference = "Organization/custodian-s01"

* section[card].title = "Medikamentenliste"
* section[card].code = $loinc#10160-0 "History of medication use"
* section[card].entry[0].reference = "MedicationStatement/card-medicationstatement-s01-1-roaccutan"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-s01-2-aspirincardio"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-s01-3-beloczok"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-s01-4-zocor"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-tt-5-morphin"

* section[healthconcerns].title = "Gesundheitsbelange"
* section[healthconcerns].code = $loinc#75310-3 "Health Concerns"
* section[healthconcerns].entry[bodyweight].reference = "Observation/card-observation-s01-bodyweight"
* section[healthconcerns].entry[bodyheight].reference = "Observation/card-observation-s01-bodyheight"
* section[healthconcerns].entry[dlstmen].reference = "Observation/card-observation-s01-dateoflastmenstruation"
* section[healthconcerns].entry[prematurebaby].reference = "Observation/card-observation-s01-prematurebaby"
* section[healthconcerns].entry[timeofgestation].reference = "Observation/card-observation-s01-timeofgestation"
* section[healthconcerns].entry[risks][+].reference = "Condition/card-condition-s01-1-renalinsufficiency"
* section[healthconcerns].entry[risks][+].reference = "Condition/card-condition-s01-2-liverinsufficiency"
* section[healthconcerns].entry[risks][+].reference = "Condition/card-condition-s01-3-reproduction"
* section[healthconcerns].entry[risks][+].reference = "Condition/card-condition-s01-4-competitiveathlete"
* section[healthconcerns].entry[risks][+].reference = "Condition/card-condition-s01-5-driver"
* section[healthconcerns].entry[risks][+].reference = "Condition/card-condition-s01-6-allergies"

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/binary-pdf-example\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/binary-pdf-example"