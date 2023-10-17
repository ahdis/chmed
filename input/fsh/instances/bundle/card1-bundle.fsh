Instance: card1-bundle
InstanceOf: CHMEDMedicationCardDocument
Title: "CARD 1 - Bundle"
Description: "Example of a Bundle - Medication Card document for the eMediplan sample shown in the IG (Home)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:0b46bccd-f007-46bf-b7ab-5eb642958896"
* type = #document
* timestamp = "2023-02-09T09:42:09+01:00"

* entry[0].fullUrl = "http://example.com/Composition/card1-composition"
* entry[=].resource = card1-composition

* entry[+].fullUrl = "http://example.com/Patient/card1-patient-petermuster"
* entry[=].resource = card1-patient-petermuster
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-weiseweitblick"
* entry[=].resource = practitionerrole-weiseweitblick
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-fweise"
* entry[=].resource = practitioner-fweise
* entry[+].fullUrl = "http://example.com/Organization/organization-praxisweitblick"
* entry[=].resource = organization-praxisweitblick

* entry[+].fullUrl = "http://example.com/MedicationStatement/card1-medicationstatement-antibiotikum"
* entry[=].resource = card1-medicationstatement-antibiotikum
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-franznotfall"
* entry[=].resource = practitionerrole-franznotfall
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-notfranz"
* entry[=].resource = practitioner-notfranz
* entry[+].fullUrl = "http://example.com/Organization/organization-notfall"
* entry[=].resource = organization-notfall

* entry[+].fullUrl = "http://example.com/MedicationStatement/card1-medicationstatement-coantihyp"
* entry[=].resource = card1-medicationstatement-coantihyp
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-docteurcardiologie"
* entry[=].resource = practitionerrole-docteurcardiologie
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-sarahdocteur"
* entry[=].resource = practitioner-sarahdocteur
* entry[+].fullUrl = "http://example.com/Organization/organization-centredecardiologie"
* entry[=].resource = organization-centredecardiologie

* entry[+].fullUrl = "http://example.com/MedicationStatement/card1-medicationstatement-choles"
* entry[=].resource = card1-medicationstatement-choles
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-exampleclinique"
* entry[=].resource = practitionerrole-exampleclinique
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-severineexample"
* entry[=].resource = practitioner-severineexample
* entry[+].fullUrl = "http://example.com/Organization/organization-clinique"
* entry[=].resource = organization-clinique

* entry[+].fullUrl = "http://example.com/MedicationStatement/card1-medicationstatement-antikrampf"
* entry[=].resource = card1-medicationstatement-antikrampf
* entry[+].fullUrl = "http://example.com/PractitionerRole/practitionerrole-rezeptpraxis"
* entry[=].resource = practitionerrole-rezeptpraxis
* entry[+].fullUrl = "http://example.com/Practitioner/practitioner-karlrezept"
* entry[=].resource = practitioner-karlrezept
* entry[+].fullUrl = "http://example.com/Organization/organization-praxis"
* entry[=].resource = organization-praxis

* entry[+].fullUrl = "http://example.com/MedicationStatement/card1-medicationstatement-essigwickel"
* entry[=].resource = card1-medicationstatement-essigwickel
* entry[+].fullUrl = "http://example.com/MedicationStatement/card1-medicationstatement-antipyretic"
* entry[=].resource = card1-medicationstatement-antipyretic


* entry[+].fullUrl = "http://example.com/Condition/riskcategory1-renalinsufficiency-pm"
* entry[=].resource = riskcategory1-renalinsufficiency-pm
* entry[+].fullUrl = "http://example.com/Condition/riskcategory6-allergies-pm"
* entry[=].resource = riskcategory6-allergies-pm
* entry[+].fullUrl = "http://example.com/Observation/observation-bodyweight-pm"
* entry[=].resource = observation-bodyweight-pm
* entry[+].fullUrl = "http://example.com/Observation/observation-bodyheight-pm"
* entry[=].resource = observation-bodyheight-pm

* entry[+].fullUrl = "http://example.com/Binary/card1-binary-emediplan"
* entry[=].resource = card1-binary-emediplan
