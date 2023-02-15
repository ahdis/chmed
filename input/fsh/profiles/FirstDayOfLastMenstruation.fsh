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
* subject only Reference(Patient)
* subject ^short = "Patient"



Mapping: eMediplan-for-CHMEDFirstDayOfLastMenstruation
Id: eMediplan
Title: "eMediplan"
Source: CHMEDFirstDayOfLastMenstruation
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* subject -> "Patient.MData -> MedicalData (MData)"
* valueDateTime -> "MedicalData (MData).DLstMen"

