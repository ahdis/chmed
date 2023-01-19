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
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"



Mapping: CHMED23A-for-CHMEDFirstDayOfLastMenstruation
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDFirstDayOfLastMenstruation
Target: "http://emediplan.ch/chmed23a"
* subject -> "Patient.MData -> MedicalData (MData)"
* valueDateTime -> "MedicalData (MData).DLstMen"


Mapping: CHMED16A-for-CHMEDFirstDayOfLastMenstruation
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDFirstDayOfLastMenstruation
Target: "http://emediplan.ch/chmed16a"
* subject -> "Patient.Med -> MedicalData"
* valueDateTime -> "MedicalData.DLstMen"