ValueSet: TimedDosageObjectType
Id: chmed-valueset-timed-dosage-object-type
Title: "CHMED Timed Dosage Object Type"
Description: "Value set for defining the type of the timed dosage object"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* include codes from system TimedDosageObjectType


CodeSystem: TimedDosageObjectType
Id: chmed-codesystem-timed-dosage-object-type
Title: "CHMED Timed Dosage Object Type"
Description: "Code system for defining the type of the timed dosage object"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^caseSensitive = true

* #1 "DosageOnly"
* #2 "Times"
* #3 "DaySegments"
* #4 "WeekDays"
* #5 "DaysOfMonth"
* #6 "Interval"
