Instance: card-composition-s01
InstanceOf: CHMEDCompositionMedicationCard
Title: "Medication Card Composition - Sample 01"
Description: "Example for a  Composition (CARD)"
Usage: #example
* language = #de-CH
//* extension[0].extension[0].url = "name"
//* extension[=].extension[=].valueString = "Private Field Name Sample 1"
//* extension[=].extension[+].url = "value"
//* extension[=].extension[=].valueString = "Private Field Value Sample 1"
//* extension[=].url = "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-private-field"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f6"
* status = #final
* type.coding[0] = $sct#736378000 "Medication management plan (record artifact)"
* type.coding[+] = $loinc#56445-0 "Medication summary Document"
* subject.reference = "Patient/card-patient-s01"
* date = "2016-09-12T11:46:09+02:00"
* author[person].reference = "PractitionerRole/practitionerrole-s01"
* title = "Medikationsplan"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* custodian.reference = "Organization/organization-s01"

* section[card].title = "Medikamentenliste"
* section[card].code = $loinc#10160-0 "History of Medication use Narrative"
* section[card].entry[0].reference = "MedicationStatement/card-medicationstatement-s01-1-roaccutan"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-s01-2-aspirincardio"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-s01-3-beloczok"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-s01-4-zocor"
* section[card].entry[+].reference = "MedicationStatement/card-medicationstatement-tt-5-morphin"

* section[healthConcerns].title = "Gesundheitsbelange"
* section[healthConcerns].code = $loinc#75310-3 "Health concerns Document"
* section[healthConcerns].entry[bodyWeight].reference = "Observation/card-observation-s01-bodyweight"
* section[healthConcerns].entry[bodyHeight].reference = "Observation/card-observation-s01-bodyheight"
* section[healthConcerns].entry[dLstMen].reference = "Observation/card-observation-s01-dateoflastmenstruation"
* section[healthConcerns].entry[prematureBaby].reference = "Observation/card-observation-s01-prematurebaby"
* section[healthConcerns].entry[timeOfGestation].reference = "Observation/card-observation-s01-timeofgestation"
* section[healthConcerns].entry[risks][+].reference = "Condition/card-condition-s01-1-renalinsufficiency"
* section[healthConcerns].entry[risks][+].reference = "Condition/card-condition-s01-2-liverinsufficiency"
* section[healthConcerns].entry[risks][+].reference = "Condition/card-condition-s01-3-reproduction"
* section[healthConcerns].entry[risks][+].reference = "Condition/card-condition-s01-4-competitiveathlete"
* section[healthConcerns].entry[risks][+].reference = "Condition/card-condition-s01-5-driver"
* section[healthConcerns].entry[risks][+].reference = "Condition/card-condition-s01-6-allergies"

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> Kommentar </div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/binary-pdf-example\">Representation of the original view</a></div>"
* section[originalRepresentation].entry.reference = "Binary/binary-pdf-example"