Profile: CHMEDMedicationCardDocument
Parent: CHEMEDDocumentMedicationCard
Id: chmed-card-bundle
Title: "CHMED Medication Card Document"
Description: "Profile for the Bundle resource to represent the entire, current medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Card Document"

* entry contains 
    ObsBodyWeight 0..1 and
    ObsBodyHeight 0..1 and
    ObsDLstMen 0..1 and
    ObsPrematureBaby 0..1 and
    ObsTimeOfGestation 0..1 and
    CondRisks 0..*

* entry[Composition].resource only CHMEDCompositionMedicationCard
* entry[Composition].resource ^short = "CHMED Medication Card Composition"
* entry[MedicationStatement].resource only CHMEDMedicationStatementCard
* entry[MedicationStatement].resource ^short = "CHMED Medication Card MedicationStatement"

* entry[ObsBodyWeight].resource only CHMEDBodyWeight
* entry[ObsBodyWeight].resource ^short = "CHMED Body Weight Observation"
* entry[ObsBodyHeight].resource only CHMEDBodyHeight
* entry[ObsBodyHeight].resource ^short = "CHMED Body Height Observation"
* entry[ObsDLstMen].resource only CHMEDFirstDayOfLastMenstruation
* entry[ObsDLstMen].resource ^short = "CHMED First Day of Last Menstruation Observation"
* entry[ObsPrematureBaby].resource only CHMEDPrematureBaby
* entry[ObsPrematureBaby].resource ^short = "CHMED Premature Baby Observation"
* entry[ObsTimeOfGestation].resource only CHMEDTimeOfGestation
* entry[ObsTimeOfGestation].resource ^short = "CHMED Time of Gestation Observation"
* entry[CondRisks].resource only CHMEDRisks
* entry[CondRisks].resource ^short = "CHMED Risks Condition"


Mapping: CHMED23A-for-CHMEDMedicationCardDocument
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedicationCardDocument
Target: "http://emediplan.ch/chmed23a"
* identifier -> "Medication.Id"