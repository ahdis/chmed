Profile: CHMED20AFCompositionMedicationCard
Parent: CHEMEDCompositionMedicationCard
Id: chmed20af-card-composition
Title: "CHMED20AF Medication Card Composition"
Description: "Profile for the Composition resource of the Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Medication Card Composition"
* language
* extension[informationRecipient]
* extension contains CHMEDExtensionPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier.system
* identifier.value
* status
* type
* subject only Reference(CHMED20AFPatientCard)
* subject
* date
* author only Reference(CHMED20AFPractitioner or $ch-emed-practitionerrole or Device or CHMED20AFPatientCard or RelatedPerson or CHCoreOrganizationEPR)
* title
* confidentiality
* confidentiality.extension[confidentialityCode]
* attester
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester contains professionalAuthenticator 0..*
* attester[professionalAuthenticator] ^short = "The professional authenticator of the document (person)"
* attester[professionalAuthenticator].mode = #professional (exactly)
* attester[professionalAuthenticator].mode
* attester[professionalAuthenticator].time
* attester[professionalAuthenticator].time ^short = "When composition was attested by the party, Validate date: Date of validation"
* attester[professionalAuthenticator].party only Reference(CHMED20AFPractitioner)
* attester[professionalAuthenticator].party
* attester[professionalAuthenticator].party ^short = "Validated by: The Gln of the pharmacist who has validated the medication card"
* custodian
* section

* section[originalRepresentation]
* section[originalRepresentation].title
* section[originalRepresentation].code
* section[originalRepresentation].text
* section[originalRepresentation].entry

* section[card]
* section[card].title
* section[card].code
* section[card].entry only Reference(CHMED20AFMedicationStatementCard)
* section[card].entry

* section[annotation]
* section[annotation].title
* section[annotation].code
* section[annotation].text
* section[annotation].text ^short = "General comments"

* section contains healthconcerns 0..1
* section[healthconcerns].code 1..
* section[healthconcerns].code = $loinc#75310-3 "Health Concerns"
* section[healthconcerns].entry
* section[healthconcerns].entry ^slicing.discriminator.type = #profile
* section[healthconcerns].entry ^slicing.discriminator.path = "resolve()"
* section[healthconcerns].entry ^slicing.ordered = false
* section[healthconcerns].entry ^slicing.rules = #open
* section[healthconcerns].entry contains
    bodyweight 0..1 and
    bodyheight 0..1 and
    dlstmen 0..1 and
    prematurebaby 0..1 and
    timeofgestation 0..1 and
    risks 0..6
* section[healthconcerns].entry[bodyweight] only Reference($bodyweight)
* section[healthconcerns].entry[bodyweight] ^short = "Body Weight (kg)"
* section[healthconcerns].entry[bodyheight] only Reference($bodyheight)
* section[healthconcerns].entry[bodyheight] ^short = "Body height (cm)"
* section[healthconcerns].entry[dlstmen] only Reference(CHMED20AFFirstDayOfLastMenstruation)
* section[healthconcerns].entry[dlstmen] ^short = "First day of last menstruation"
* section[healthconcerns].entry[dlstmen] ^definition = "First day of last menstruation, Only if risks Id 74,75,76 in risk group 3"
* section[healthconcerns].entry[prematurebaby] only Reference(CHMED20AFPrematureBaby)
* section[healthconcerns].entry[prematurebaby] ^short = "Premature Baby"
* section[healthconcerns].entry[prematurebaby] ^definition = "Premature Baby if age <=18 months"
* section[healthconcerns].entry[timeofgestation] only Reference(CHMED20AFTimeOfGestation)
* section[healthconcerns].entry[timeofgestation] ^short = "Time of gestation"
* section[healthconcerns].entry[timeofgestation] ^definition = "Time of Gestation in days"
* section[healthconcerns].entry[risks] only Reference(CHMED20AFRisks)
* section[healthconcerns].entry[risks] ^short = "Risks"
* section[healthconcerns].entry[risks] ^definition = "Possible risks for a patient"
* section[healthconcerns].section 0..0


Mapping: CHMED16A-for-CHMED20AFCompositionMedicationCard
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFCompositionMedicationCard
Target: "http://emediplan.ch/chmed16a"
* -> "Medication"
* extension[informationRecipient] -> "Patient or Patient.Rcv (Gln of receiver)"
* extension[privatefield] -> "PFields"
* identifier -> "Id"
* type -> "MedType"
* subject -> "Patient"
* date -> "Dt"
* author -> "Auth"
* attester[professionalAuthenticator].time -> "ValDt (Validate date: Date of validation)"
* attester[professionalAuthenticator].party -> "ValBy (Validate by: The Gln of the pharmacist who has validated the medication card)"
* section[card] -> "Medicaments"
* section[annotation] -> "Rmk"
* section[healthconcerns].entry[bodyweight] -> "MedicalData.Meas.Weight"
* section[healthconcerns].entry[bodyheight] -> "MedicalData.Meas.Height"
* section[healthconcerns].entry[dlstmen] -> "MedicalData.DLstMen"
* section[healthconcerns].entry[prematurebaby] -> "MedicalData.Prem"
* section[healthconcerns].entry[timeofgestation] -> "MedicalData.ToG"
* section[healthconcerns].entry[risks] -> "MedicalData.RG"