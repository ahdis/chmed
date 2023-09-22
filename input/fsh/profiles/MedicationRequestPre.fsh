Profile: CHMEDMedicationRequestPre
Parent: CHEMEDMedicationRequest
Id: chmed-pre-medicationrequest
Title: "CHMED MedicationRequest (PRE)"
Description: "Profile for the MedicationRequest resource of the Medication Prescription document"
* . ^short = "CHMED MedicationRequest (PRE)"
* extension contains 
    CHMEDExtension named exts 0..* and
    CHMEDSic named sic 0..1
* medicationReference only Reference(CHMEDMedication)
* medicationReference ^short = "Medicament"
* subject ^short = "The patient"
* subject only Reference(CHMEDPatientPre)
* reasonCode.text ^short = "Reason for applying the medication (the reason for the medication treatment)"
* dosageInstruction ^short = "Posology"
* dosageInstruction.additionalInstruction ^short = "Information whether a medicament must be taken relative to a meal"
* dosageInstruction.patientInstruction ^short = "Application instructions (further information on how to apply the medication, e.g. take before meals)"
* dosageInstruction.timing.repeat.boundsPeriod.start ^short = "From date (start date of medication treatment)"
* dosageInstruction.timing.repeat.boundsPeriod.end ^short = "To date (end date of medication treatment)"
* dosageInstruction.timing.repeat.when ^short = "Details of the posology"
* dosageInstruction.asNeededBoolean ^short = "Reserve medication (true if in reserve; false otherwise)"
* dosageInstruction.route ^short = "The route of administration"
* dosageInstruction.method ^short = "The method of administration"
* dosageInstruction.doseAndRate.dose[x] ^short = "The quantity unit"
* dosageInstruction[baseEntry]
* dosageInstruction[additionalEntry]
* dispenseRequest.validityPeriod ^short = "How long the prescription is valid"
* dispenseRequest.numberOfRepeatsAllowed ^short = "How often a prescription can be repeated"
* dispenseRequest.quantity ^short = "Number of packages to be delivered"
* substitution.allowedCodeableConcept ^short = "Whether substitution is allowed or not"



Mapping: eMediplan-for-CHMEDMedicationRequestPre
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationRequestPre
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medicament"
* extension[exts] -> "exts -> Extension"
* extension[sic] -> "sic"
* medicationReference -> "id with idType"
* subject -> "Patient"
* reasonCode.text -> "rsn"
* dosageInstruction -> "pos -> Posology"
* dosageInstruction.additionalInstruction -> "Posology.relMeal"
* dosageInstruction.patientInstruction -> "appInstr"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "dtFrom"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "dtTo"
* dosageInstruction.timing.repeat.when -> "Posology.po -> PosologyDetail"
* dosageInstruction.asNeededBoolean -> "Posology.inRes"
* dosageInstruction.route -> "roa"
* dosageInstruction.method -> "moa"
* dosageInstruction.doseAndRate.dose[x] -> "unit"
* dosageInstruction[baseEntry] -> "Posology"
* dosageInstruction[additionalEntry] -> "Posology"
* dispenseRequest -> "reps -> Repetition object"
* dispenseRequest.validityPeriod -> "Repetition object: Duration / NumberAndDuration"
* dispenseRequest.numberOfRepeatsAllowed -> "Repetition object: Number / NumberAndDuration"
* dispenseRequest.quantity -> "nbPack"
* substitution.allowedCodeableConcept -> "sub"
