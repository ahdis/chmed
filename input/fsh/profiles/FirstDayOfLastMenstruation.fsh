Profile: FirstDayOfLastMenstruation
Parent: Observation
Id: chmed20af-obs-dateoflastmenstruation
Title: "First Day of Last Menstruation"
Description: "Profile for the Observation resource to represent the first day of the last menstruation"
* . ^short = "CHMED20AF First Day of Last Menstruation"
* code = $sct#161713000
* code MS
* code ^short = "First day of last menstruation"
* valueDateTime 1.. MS
* valueDateTime only dateTime



Mapping: CHMED16A-for-FirstDayOfLastMenstruation
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: FirstDayOfLastMenstruation
Target: "http://emediplan.ch/chmed16a"
* valueDateTime -> "MedicalData.DLstMen"