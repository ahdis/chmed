Instance: card1-composition
InstanceOf: CHMEDCompositionMedicationCard
Title: "CARD 1 - Composition"
Description: "Example of a Composition - Medication Card document for the eMediplan sample shown in the IG (Home)."
Usage: #example
* language = #de-CH
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0b46bccd-f007-46bf-b7ab-5eb642958896"
* status = #final
* type.coding[0] = $sct#736378000 "Medication management plan (record artifact)"
* type.coding[+] = $loinc#56445-0 "Medication summary Document"
* subject = Reference(card1-patient-petermuster)
* date = "2023-02-09T09:42:09+01:00"
* author[person] = Reference(practitionerrole-weiseweitblick)
* title = "Medikationsplan"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[card].title = "Medikamentenliste"
* section[card].code = $loinc#10160-0 "History of Medication use Narrative"
* section[card].entry[0] = Reference(card1-medicationstatement-antibiotikum)
* section[card].entry[+] = Reference(card1-medicationstatement-coantihyp)
* section[card].entry[+] = Reference(card1-medicationstatement-choles)
* section[card].entry[+] = Reference(card1-medicationstatement-antikrampf)
* section[card].entry[+] = Reference(card1-medicationstatement-essigwickel)
* section[card].entry[+] = Reference(card1-medicationstatement-antipyretic)

* section[healthConcerns].title = "Gesundheitsbelange"
* section[healthConcerns].code = $loinc#75310-3 "Health concerns Document"
* section[healthConcerns].entry[risks][0] = Reference(riskcategory1-renalinsufficiency-pm)
* section[healthConcerns].entry[risks][+] = Reference(riskcategory6-allergies-pm)
* section[healthConcerns].entry[bodyWeight] = Reference(observation-bodyweight-pm)
* section[healthConcerns].entry[bodyHeight] = Reference(observation-bodyheight-pm)

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Der Patient ist vom Medikationsplan begeistert!</div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/binary-pdf-example\">Representation of the original view</a></div>"
* section[originalRepresentation].entry = Reference(card1-binary-emediplan)
