Profile: CHMEDMedicationStatementCard
Parent: CHEMEDMedicationStatementCard
Id: chmed-card-medicationstatement
Title: "CHMED MedicationStatement (CARD)"
Description: "Profile for the MedicationStatement resource of the Medication Card document"
* . ^short = "CHMED MedicationStatement (CARD)"
* extension contains CHMEDExtension named exts 0..*
* extension[exts] ^short = "Extension"
* extension[substitution] ^short = "Whether substitution is allowed or not" 
* medicationReference only Reference(CHMEDMedication)
* medicationReference ^short = "Medicament"
* subject ^short = "The patient"
* subject only Reference(CHMEDPatientCard)
* informationSource only Reference(CHMEDPractitionerRole or CHMEDPatientCard or RelatedPerson)
* informationSource ^short = "PractitionerRole for 'prscbBy' or Patient/RelatedPerson for 'autoMed'"
* reasonCode.text ^short = "Reason for applying the medication (the reason for the medication treatment)"
* dosage ^short = "Posology"
* dosage.additionalInstruction ^short = "Information whether a medicament must be taken relative to a meal"
* dosage.patientInstruction ^short = "Application instructions (further information on how to apply the medication, e.g. take before meals)"
* dosage.timing.repeat.boundsPeriod.start ^short = "From date (start date of medication treatment)"
* dosage.timing.repeat.boundsPeriod.end ^short = "To date (end date of medication treatment)"
* dosage.timing.repeat.when ^short = "Details of the posology"
* dosage.asNeededBoolean ^short = "Reserve medication (true if in reserve; false otherwise)"
* dosage.route ^short = "The route of administration"
* dosage.method ^short = "The method of administration"
* dosage.doseAndRate.dose[x] ^short = "The quantity unit"
* dosage[baseEntry]
* dosage[additionalEntry]



Mapping: eMediplan-for-CHMEDMedicationStatementCard
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationStatementCard
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medicament"
* extension[exts] -> "exts -> Extension"
* extension[substitution] -> "sub"
* medicationReference -> "id with idType"
* subject -> "Patient"
* informationSource -> "prscbBy/autoMed"
* reasonCode.text -> "rsn"
* dosage -> "pos -> Posology"
* dosage.additionalInstruction -> "Posology.relMeal"
* dosage.patientInstruction -> "appInstr"
* dosage.timing.repeat.boundsPeriod.start -> "dtFrom"
* dosage.timing.repeat.boundsPeriod.end -> "dtTo"
* dosage.timing.repeat.when -> "Posology.po -> PosologyDetail"
* dosage.asNeededBoolean -> "Posology.inRes"
* dosage.route -> "roa"
* dosage.method -> "moa"
* dosage.doseAndRate.dose[x] -> "unit"
* dosage[baseEntry] -> "Posology"
* dosage[additionalEntry] -> "Posology"
