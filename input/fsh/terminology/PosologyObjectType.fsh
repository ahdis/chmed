ValueSet: PosologyObjectType
Id: chmed-valueset-posology-object-type
Title: "CHMED Posology Object Type"
Description: "Value set for defining the type of the posology object"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* ^experimental = false

* include codes from system PosologyObjectType


CodeSystem: PosologyObjectType
Id: chmed-codesystem-posology-object-type
Title: "CHMED Posology Object Type"
Description: "Code system for defining the type of the posology object"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* ^experimental = false
* ^caseSensitive = true

* #1 "Daily"
* #2 "FreeText"
* #3 "Single"
* #4 "Cyclic"
* #5 "Sequence"
* #6 "Even/odd days"