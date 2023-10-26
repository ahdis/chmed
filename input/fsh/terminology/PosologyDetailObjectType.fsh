ValueSet: PosologyDetailObjectType
Id: chmed-valueset-posology-detail-object-type
Title: "CHMED Posology Detail Object Type"
Description: "Value set for defining the type of the posology detail object"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* ^experimental = false

* include codes from system PosologyDetailObjectType


CodeSystem: PosologyDetailObjectType
Id: chmed-codesystem-posology-detail-object-type
Title: "CHMED Posology Detail Object Type"
Description: "Code system for defining the type of the posology detail object"
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
