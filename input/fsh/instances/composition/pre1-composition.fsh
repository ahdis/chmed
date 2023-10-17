Instance: pre1-composition
InstanceOf: CHMEDCompositionMedicationPrescription
Title: "PRE 1 - Composition"
Description: "Example of a Composition - Medication Prescription document for the first medication (ANTIBIOTIKUM) in the eMediplan sample shown in the IG (Home)"
Usage: #example
* language = #de-CH
* extension[rec].valueIdentifier.system = "urn:oid:2.51.1.3"
* extension[rec].valueIdentifier.value = "7601000234322"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:17cd3fd9-9ad1-4b2c-998a-c2ad240e84ef"
* status = #final
* type.coding[0] = $loinc#57833-6 "Prescription for medication"
* type.coding[+] = $sct#761938008 "Medicinal prescription record (record artifact)"
* subject = Reference(pre1-patient-petermuster)
* date = "2023-02-09T09:32:32+01:00"
* author[person] = Reference(practitionerrole-franznotfall)
* title = "Rezept"
* confidentiality.extension.url = "http://fhir.ch/ig/ch-core/StructureDefinition/ch-ext-epr-confidentialitycode"
* confidentiality.extension.valueCodeableConcept = $sct#17621005 "Normal (qualifier value)"
* confidentiality = #N

* section[prescription].title = "Arzneimittelverordnung"
* section[prescription].code = $loinc#57828-6 "PRESCRIPTIONS"
* section[prescription].entry = Reference(pre1-medicationrequest-antibiotikum)

* section[annotation].title = "Kommentar"
* section[annotation].code = $loinc#48767-8 "Annotation comment [Interpretation] Narrative"
* section[annotation].text.status = #additional
* section[annotation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Kommentar zum Rezept</div>"

* section[originalRepresentation].title = "Original Darstellung"
* section[originalRepresentation].code = $loinc#55108-5 "Clinical presentation Document"
* section[originalRepresentation].text.status = #generated
* section[originalRepresentation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a href=\"Binary/binary-pdf-example\">Representation of the original view</a></div>"
* section[originalRepresentation].entry = Reference(binary-pdf-example)