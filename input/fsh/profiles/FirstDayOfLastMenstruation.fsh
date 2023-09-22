Profile: CHMEDFirstDayOfLastMenstruation
Parent: Observation
Id: chmed-obs-dateoflastmenstruation
Title: "CHMED First Day of Last Menstruation"
Description: "Profile for the Observation resource to represent the first day of the last menstruation"
* . ^short = "CHMED First Day of Last Menstruation"
* code = $sct#161713000
* code ^short = "Last menstrual period -1st day"
* valueDateTime 1..
* valueDateTime ^short = "First day of last menstruation (only required in case of pregnancy)"
* valueDateTime only dateTime
* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"



Mapping: eMediplan-for-CHMEDFirstDayOfLastMenstruation
Id: eMediplan
Title: "eMediplan"
Source: CHMEDFirstDayOfLastMenstruation
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* subject -> "Patient.mData -> MedicalData"
* valueDateTime -> "MedicalData.dLstMen"
* code -> "MedicalData.dLstMen"
