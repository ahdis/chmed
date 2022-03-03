Profile: CHMEDFirstDayOfLastMenstruation
Parent: Observation
Id: chmed-obs-dateoflastmenstruation
Title: "CHMED First Day of Last Menstruation"
Description: "Profile for the Observation resource to represent the first day of the last menstruation"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED First Day of Last Menstruation"
* code = $sct#161713000
* code
* code ^short = "First day of last menstruation"
* valueDateTime 1..
* valueDateTime only dateTime



Mapping: CHMED21A-for-CHMEDFirstDayOfLastMenstruation
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDFirstDayOfLastMenstruation
Target: "http://emediplan.ch/chmed21a"
* valueDateTime -> "MedicalData.DLstMen"