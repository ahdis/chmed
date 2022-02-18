Instance: card-bundle-s01
InstanceOf: CHMED20AFMedicationCardDocument
Title: "Medication Card Document - Sample 01"
Description: "Example for a Medication Card document (Bundle) with all specified health concerns included"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:26d3dff7-ab05-4737-a49c-5eccd33595f6"
* type = #document
* timestamp = "2016-09-12T11:46:09+02:00"
* entry[0].fullUrl = "http://example.com/Composition/card-composition-s01"
* entry[=].resource = card-composition-s01


* entry[+].fullUrl = "http://example.com/Patient/card-patient-s01"
* entry[=].resource = card-patient-s01
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-s01"
* entry[=].resource = practitioner-s01
* entry[+].fullUrl = "http://example.com/Organization/custodian-s01"
* entry[=].resource = custodian-s01

* entry[+].fullUrl = "http://example.com/MedicationStatement/card-medicationstatement-s01-1-roaccutan"
* entry[=].resource = card-medicationstatement-s01-1-roaccutan
* entry[+].fullUrl = "http://example.com/MedicationStatement/card-medicationstatement-s01-2-aspirincardio"
* entry[=].resource = card-medicationstatement-s01-2-aspirincardio
* entry[+].fullUrl = "http://example.com/MedicationStatement/card-medicationstatement-s01-3-beloczok"
* entry[=].resource = card-medicationstatement-s01-3-beloczok
* entry[+].fullUrl = "http://example.com/MedicationStatement/card-medicationstatement-s01-4-zocor"
* entry[=].resource = card-medicationstatement-s01-4-zocor
* entry[+].fullUrl = "http://example.com/MedicationStatement/card-medicationstatement-tt-5-morphin"
* entry[=].resource = card-medicationstatement-tt-5-morphin

* entry[+].fullUrl = "http://example.com/Observation/card-observation-s01-bodyheight"
* entry[=].resource = card-observation-s01-bodyheight
* entry[+].fullUrl = "http://example.com/Observation/card-observation-s01-bodyweight"
* entry[=].resource = card-observation-s01-bodyweight
* entry[+].fullUrl = "http://example.com/Observation/card-observation-s01-dateoflastmenstruation"
* entry[=].resource = card-observation-s01-dateoflastmenstruation
* entry[+].fullUrl = "http://example.com/Observation/card-observation-s01-prematurebaby"
* entry[=].resource = card-observation-s01-prematurebaby
* entry[+].fullUrl = "http://example.com/Observation/card-observation-s01-timeofgestation"
* entry[=].resource = card-observation-s01-timeofgestation

* entry[+].fullUrl = "http://example.com/Condition/card-condition-s01-1-renalinsufficiency"
* entry[=].resource = card-condition-s01-1-renalinsufficiency
* entry[+].fullUrl = "http://example.com/Condition/card-condition-s01-2-liverinsufficiency"
* entry[=].resource = card-condition-s01-2-liverinsufficiency
* entry[+].fullUrl = "http://example.com/Condition/card-condition-s01-3-reproduction"
* entry[=].resource = card-condition-s01-3-reproduction
* entry[+].fullUrl = "http://example.com/Condition/card-condition-s01-4-competitiveathlete"
* entry[=].resource = card-condition-s01-4-competitiveathlete
* entry[+].fullUrl = "http://example.com/Condition/card-condition-s01-5-driver"
* entry[=].resource = card-condition-s01-5-driver
* entry[+].fullUrl = "http://example.com/Condition/card-condition-s01-6-allergies"
* entry[=].resource = card-condition-s01-6-allergies

* entry[+].fullUrl = "http://example.com/Binary/binary-pdf-example"
* entry[=].resource = binary-pdf-example

