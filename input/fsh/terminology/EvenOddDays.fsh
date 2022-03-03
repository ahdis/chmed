ValueSet: EvenOddDays
Id: chmed-valueset-even-odd-days
Title: "CHMED Even/Odd Days"
Description: "Value set for medicament application on even or odd days"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* include codes from system EvenOddDays


CodeSystem: EvenOddDays
Id: chmed-codesystem-even-odd-days
Title: "CHMED Even/Odd Days"
Description: "Code system for medicament application on even or odd days"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^caseSensitive = true

* #even "Even Days" "Medicament must be applied on even days"
* #odd "Odd Days" "Medicament must be applied on odd days"