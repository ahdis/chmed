Profile: CHMEDMedicationCardDocument
Parent: CHEMEDDocumentMedicationCard
Id: chmed-card-bundle
Title: "CHMED Medication Card document"
Description: "Profile for the Bundle resource to represent the entire, current medication of a patient"
* . ^short = "CHMED Medication Card document"

* identifier ^short = "The ID"
* timestamp ^short = "The date of creation"

* entry contains 
    ObsDLstMen 0..1 and
    ObsPrematureBaby 0..1 and
    ObsTimeOfGestation 0..1 and
    CondRisks 0..* and
    ObsBodyWeight 0..1 and
    ObsBodyHeight 0..1
  
* entry[Composition].resource only CHMEDCompositionMedicationCard
* entry[Composition].resource ^short = "CHMED Medication Card Composition"
* entry[MedicationStatement].resource only CHMEDMedicationStatementCard
* entry[MedicationStatement].resource ^short = "CHMED Medication Card MedicationStatement"

* entry[ObsDLstMen].resource only CHMEDFirstDayOfLastMenstruation
* entry[ObsDLstMen].resource ^short = "CHMED First Day of Last Menstruation Observation"
* entry[ObsDLstMen].resource 1..
* entry[ObsPrematureBaby].resource only CHMEDPrematureBaby
* entry[ObsPrematureBaby].resource ^short = "CHMED Premature Baby Observation"
* entry[ObsPrematureBaby].resource 1..
* entry[ObsTimeOfGestation].resource only CHMEDTimeOfGestation
* entry[ObsTimeOfGestation].resource ^short = "CHMED Time of Gestation Observation"
* entry[ObsTimeOfGestation].resource 1..
* entry[CondRisks].resource only CHMEDRisks
* entry[CondRisks].resource ^short = "CHMED Risks Condition"
* entry[CondRisks].resource 1..
* entry[ObsBodyWeight].resource only CHMEDBodyWeight
* entry[ObsBodyWeight].resource ^short = "CHMED Body Weight Observation"
* entry[ObsBodyWeight].resource 1..
* entry[ObsBodyHeight].resource only CHMEDBodyHeight
* entry[ObsBodyHeight].resource ^short = "CHMED Body Height Observation"
* entry[ObsBodyHeight].resource 1..





Mapping: eMediplan-for-CHMEDMedicationCardDocument
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationCardDocument
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* identifier -> "Medication.id"
* timestamp -> "Medication.dt"
* entry[Composition] -> "Medication"