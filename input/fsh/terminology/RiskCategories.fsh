ValueSet: RiskCategories
Id: chmed-valueset-risks-category
Title: "CHMED Risk Categories"
Description: "Value set for possible risk categories"
* ^publisher = "HCI Solutions AG"
* ^contact.name = "Hotline"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "hotline@hcisolutions.ch"
* ^experimental = false

* include codes from system RiskCategories


CodeSystem: RiskCategories
Id: chmed-codesystem-risks-category
Title: "CHMED Risk Categories"
Description: "Code system for possible risk categories"
* ^identifier.system = "https://index.hcisolutions.ch/codes/"
* ^identifier.value = "risks-category"
* ^publisher = "HCI Solutions AG"
* ^contact.name = "Hotline"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "hotline@hcisolutions.ch"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* #1 "Renal Insufficiency"
* #1 ^designation[0].language = #de-CH
* #1 ^designation[=].value = "Niereninsuffizienz"
* #1 ^designation[+].language = #fr-CH
* #1 ^designation[=].value = "Insuffisance rénale"

* #2 "Liver Insufficiency"
* #2 ^designation[0].language = #de-CH
* #2 ^designation[=].value = "Leberinsuffizienz"
* #2 ^designation[+].language = #fr-CH
* #2 ^designation[=].value = "insuffisance hépatique"

* #3 "Reproduction"
* #3 ^designation[0].language = #de-CH
* #3 ^designation[=].value = "Reproduction"
* #3 ^designation[+].language = #fr-CH
* #3 ^designation[=].value = "Reproduction"

* #4 "Competitive athlete"
* #4 ^designation[0].language = #de-CH
* #4 ^designation[=].value = "Competitive athlete"
* #4 ^designation[+].language = #fr-CH
* #4 ^designation[=].value = "Competitive athlete"

* #5 "Driver"
* #5 ^designation[0].language = #de-CH
* #5 ^designation[=].value = "Driver"
* #5 ^designation[+].language = #fr-CH
* #5 ^designation[=].value = "Driver"

* #6 "Allergies"
* #6 ^designation[0].language = #de-CH
* #6 ^designation[=].value = "Allergies"
* #6 ^designation[+].language = #fr-CH
* #6 ^designation[=].value = "Allergies"

* #7 "Diabetes"
* #7 ^designation[0].language = #de-CH
* #7 ^designation[=].value = "Diabetes"
* #7 ^designation[+].language = #fr-CH
* #7 ^designation[=].value = "Diabetes"