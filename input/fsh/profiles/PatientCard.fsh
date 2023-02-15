Profile: CHMEDPatientCard
Parent: CHMEDPatientPre
Id: chmed-card-patient
Title: "CHMED Patient (Card)"
Description: "Profile for the Patient resource, referenced in the CHMED Medication Card Composition"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Patient (Card)"

* communication 1..1
* communication[languageOfCorrespondence] 1..
* communication[languageOfCorrespondence] ^short = "Language of the patient"



Mapping: eMediplan-for-CHMEDPatientCard
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPatientCard
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* -> "Patient"

* communication[languageOfCorrespondence] -> "Lng (conversion between ISO 639-1 (ex. de) to urn:ietf:bcp:47 (ex. de-CH) necessary)"
