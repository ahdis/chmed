Profile: CHMED20AFFirstDayOfLastMenstruation
Parent: Observation
Id: chmed20af-obs-dateoflastmenstruation
Title: "CHMED20AF First Day of Last Menstruation"
Description: "Profile for the Observation resource to represent the first day of the last menstruation"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF First Day of Last Menstruation"
* code = $sct#161713000
* code
* code ^short = "First day of last menstruation"
* valueDateTime 1..
* valueDateTime only dateTime



Mapping: CHMED16A-for-CHMED20AFFirstDayOfLastMenstruation
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFFirstDayOfLastMenstruation
Target: "http://emediplan.ch/chmed16a"
* valueDateTime -> "MedicalData.DLstMen"