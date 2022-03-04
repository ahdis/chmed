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
* code ^short = "Last menstrual period -1st day"

* valueDateTime 1..
* valueDateTime ^short = "First day of last menstruation"
* valueDateTime only dateTime

* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "Patient"



Mapping: CHMED21A-for-CHMEDFirstDayOfLastMenstruation
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDFirstDayOfLastMenstruation
Target: "http://emediplan.ch/chmed21a"
* subject -> "Patient.MData -> MedicalData"
* valueDateTime -> "MedicalData.DLstMen"