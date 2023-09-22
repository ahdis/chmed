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
* #1 "Renal insufficiency"
* #2 "Liver insufficiency"
* #3 "Reproduction"
* #4 "Competitive athlete"
* #5 "Operating vehicles/machines"
* #6 "Allergies"
* #7 "Diabetes"
