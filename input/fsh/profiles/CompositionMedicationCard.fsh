Profile: CompositionMedicationCard
Parent: CHEMEDCompositionMedicationCard
Id: chmed20af-card-composition
Title: "Medication Card Composition"
Description: "Profile for the Composition resource of the Medication Card document"
* . ^short = "CHMED20AF Medication Card Composition"
* language MS
* extension[informationRecipient] MS
* extension contains ExtPrivateField named privatefield 0..* MS
* extension[privatefield] ^short = "Private fields for patient"
* identifier MS
* identifier.system MS
* identifier.value MS
* status MS
* type MS
* subject only Reference(PatientCard)
* subject MS
* date MS
* author only Reference(Practitioner or CHCorePractitionerRoleEpr or Device or PatientCard or RelatedPerson or CHCoreOrganizationEPR)
* author MS
* title MS
* confidentiality MS
* confidentiality.extension[confidentialityCode] MS
* attester MS
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester contains professionalAuthenticator 0..* MS
* attester[professionalAuthenticator] ^short = "The professional authenticator of the document (person)"
* attester[professionalAuthenticator].mode = #professional (exactly)
* attester[professionalAuthenticator].mode MS
* attester[professionalAuthenticator].time MS
* attester[professionalAuthenticator].time ^short = "When composition was attested by the party, Validate date: Date of validation"
* attester[professionalAuthenticator].party only Reference(Practitioner)
* attester[professionalAuthenticator].party MS
* attester[professionalAuthenticator].party ^short = "Validated by: The Gln of the pharmacist who has validated the medication card"
* custodian MS
* section MS

* section[originalRepresentation] MS
* section[originalRepresentation].title MS
* section[originalRepresentation].code MS
* section[originalRepresentation].text MS
* section[originalRepresentation].entry MS

* section[card] MS
* section[card].title MS
* section[card].code MS
* section[card].entry only Reference(MedicationStatementCard)
* section[card].entry MS

* section[annotation] MS
* section[annotation].title MS
* section[annotation].code MS
* section[annotation].text MS
* section[annotation].text ^short = "General comments"

* section contains healthconcerns 0..1 MS
* section[healthconcerns].code 1.. MS
* section[healthconcerns].code = $loinc#75310-3 "Health Concerns"
* section[healthconcerns].entry MS
* section[healthconcerns].entry ^slicing.discriminator.type = #profile
* section[healthconcerns].entry ^slicing.discriminator.path = "resolve()"
* section[healthconcerns].entry ^slicing.ordered = false
* section[healthconcerns].entry ^slicing.rules = #open
* section[healthconcerns].entry contains
    bodyweight 0..1 MS and
    bodyheight 0..1 MS and
    dlstmen 0..1 MS and
    prematurebaby 0..1 MS and
    timeofgestation 0..1 MS and
    risks 0..6 MS
* section[healthconcerns].entry[bodyweight] only Reference($bodyweight)
* section[healthconcerns].entry[bodyweight] ^short = "Body Weight (kg)"
* section[healthconcerns].entry[bodyheight] only Reference($bodyheight)
* section[healthconcerns].entry[bodyheight] ^short = "Body height (cm)"
* section[healthconcerns].entry[dlstmen] only Reference(FirstDayOfLastMenstruation)
* section[healthconcerns].entry[dlstmen] ^short = "First day of last menstruation"
* section[healthconcerns].entry[dlstmen] ^definition = "First day of last menstruation, Only if risks Id 74,75,76 in risk group 3"
* section[healthconcerns].entry[prematurebaby] only Reference(PrematureBaby)
* section[healthconcerns].entry[prematurebaby] ^short = "Premature Baby"
* section[healthconcerns].entry[prematurebaby] ^definition = "Premature Baby if age <=18 months"
* section[healthconcerns].entry[timeofgestation] only Reference(TimeOfGestation)
* section[healthconcerns].entry[timeofgestation] ^short = "Time of gestation"
* section[healthconcerns].entry[timeofgestation] ^definition = "Time of Gestation in days"
* section[healthconcerns].entry[risks] only Reference(Risks)
* section[healthconcerns].entry[risks] ^short = "Risks"
* section[healthconcerns].entry[risks] ^definition = "Possible risks for a patient"
* section[healthconcerns].section 0..0


Mapping: CHMED16A-for-CompositionMedicationCard
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CompositionMedicationCard
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