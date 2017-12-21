# Introduction

CHMED16A and CHMED16AF define three different exchange formats:
1. [MedicationPlan (MP)](#medicatonplan)
2. [PolymedicationCheck (PMC)](#polymedicationcheck)
3. [Prescription (Rx)](#prescription)

These exchange formats are defined in three different document types, which correspond to a Bundle as FHIR Ressource.
A Bundle has list of Entries. The first Entry is the Composition where alle contained Entries are then referenced.

# MedicatonPlan

The medication plan summarizes the entire, current medication of a patient.

## Bundle

{% include img.html img="bundle_medicationplan.png" caption="Bundle Medication Plan" %}

The FHIR ressource Bundle bundles the corresponding entroes in a document. It contains

* The profile this bundle correspons to (chmed16af-mp-bundle)
* The type of the bundle (fixed here on "document")
* An entry to the composition, the actual document that references different resources (further entry elements in the bundle)
* Further entry elements to the patient, medication plan entries, etc.

[Profile for Medication Plan](StructureDefinition-chmed16af-mp-bundle.html) &#124; [Example for Medication Plan (xml)](Bundle-chmed16af-mp-bundle-s01.xml.html)

## Compostion

The Composition ressource defines the following parameter for the medication plan:

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| subject  | Reference to the Patient  | Patient  | Patient | &lt;P&gt;    | 
| identifier  | Logical identifier for document (GUID)  | Identifier  | id  | @i | 
| date  | Date of creation  |  dateTime | Dt | @c  | 
| author  | Author (Gln if available, otherwise name)  | Practitioner  | Auth | &lt;A&gt;  | 
| attester.time  | Date of validation  | Practitioner  | ValDt | @at  | 
| attester.party  | Validated by GLN of practitionier  |  Practitioner | ValBy | @ap  | 
| section | medications |  MedicationStatement | Medicaments | &lt;MS&gt;  | 
| section | healthconcerns |  Entry | MedicalData | &lt;SH&gt;  | 
| section | notes |  text | Rmk | @n  | 
| receiver | Practitioner GLN if receiver |  [Practitioner](StructureDefinition-chmed16af-receiver.html) | Patient.RCV (GLN of receiver) | @r |   

[Profile for Medication Plan Composition](StructureDefinition-chmed16af-mp-composition.html) &#124; [Example for Composition (xml)](Composition-chmed16af-mp-composition-s01.xml.html)

## Patient

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| identifier  | Insurance card number for this patient  | Identifier  | Patient.PatientId[Type=1] | @i    | 
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName | @g, @f    | 
| telecom  | telephone number  | ContactPoint  | Patient.Phone | @t    | 
| gender  | gender  | code  | Patient.gender, male=1, female=2 | @ag=m or f | 
| birthDate  | the date of birth  | date  |Patient.BDt | @b | 
| address  | address for the patient  | Address  |address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City | @l, @p, @c | 
| communication.language  | language for the patient  | CodeableConcept  |Patient.Lng conversion between ISO 639-1 (de) to urn:ietf:cbp:47 (de_CH) necessary" | @cl | 

[Profile for Medication Plan Patient](StructureDefinition-chmed16af-mp-patient.html) &#124; [Example for Patient (xml)](Patient-chmed16af-mp-patient-s01.xml.html)

## Practitioner

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| identifier  | GLN for this practitioner  | Identifier  | Author.GLN | @i    | 
| name  | Name for this practitioner  | HumanName  | name.given = Author.FName, name.family = Author.LName | @g, @f    | 

[Profile for Practitioner](StructureDefinition-chmed16af-practitioner.html) &#124; [Example for Practitioner (xml)](Practitioner-chmed16af-practitioner-s01.xml.html)


## Medication Section 
The medication section contains the entries for the current medications for patient. 

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| medicationReference  | reference to Medication  | Medication  | Medication.ID with IdTpye 2 (GTIN) | @i    | 
| informationSource  | Person or organization that provided the information about the taking of this medication  | Patient or Practitioner  | Selfmedication (AutoMed) if Patient is informationSource, PrescrBy if Practitioner | @s=1 or 0    | 
| reasonCode  | Reason for why the medication is being/was taken  | CodeableConcept  | Medication.TkgRsn (Taking Reason) | @r  | 
| note  | Application Instructions  | Annotation  |Medication.AppInstr | @n  | 
| dosage  | Details of how medication is/was taken or should be taken  | Dosage  | Medication.Pos (list of Posology) @n | &lt;D&gt;  | 
| dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, CyDu, InRes | @s @e @c @dv @du @f @p @pu @dw @td @w @r   | 
| dosage.route  | How drug should enter body | CodeableConect  | Medication.Roa | @o |
| dosage.doseQuantity  |Amount of medication per dose. | Range or Quantity  | doseSimpleQuantity: TakingTime.A, doseRange: TakingTime.DoFrom | @q @u |
| dosage.maxDosePerPeriod  | Amount of medication per dose. | Ratio  | TakingTime.MA |  |

[Profile for MedicationStatmeent](StructureDefinition-chmed16af-mp-medicationstatement.html) &#124; [Profile for Medication](StructureDefinition-chmed16af-medication.html)

Examples for MedicationStatements [1](MedicationStatement-chmed16af-mp-medicationstatement-s01-1.html) &#124; [2](MedicationStatement-chmed16af-mp-medicationstatement-s01-2.html) &#124; [3](MedicationStatement-chmed16af-mp-medicationstatement-s01-3.html) &#124; [4](MedicationStatement-chmed16af-mp-medicationstatement-s01-4.html)

## Health Concerns Section 
The health concern sections contains the medical data for the patient and the possible risks. If the risk category is specified without any risk specified in the code, the entire risk category is considered as explicitly excluded for the current patient. If the risk category does not exist,the risks are considered as unknown for the patient.

| Entry  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| Body Weight  | [Weight measurement for patient in kg](Observation-chmed16af-mp-observation-s01-bodyweight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyweight)  | MedicalData.Meas.Weight | @w    | 
| Body Height  | [Weight measurement for patient in cm](Observation-chmed16af-mp-observation-s01-bodyheight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyheight)  | MedicalData.Meas.Height | @h    | 
| First day of last menstruation  | [First day of last menstruation](Observation-chmed16af-observation-s01-dateoflastmenustration.html) | [Observation](StructureDefinition-chmed16af-obs-dateoflastmenstruation.html)  | MedicalData.DLstMen | @m    | 
| Premature baby  | [premature baby true only if age &lt;= 18 months](Observation-chmed16af-observation-s01-prematurebaby.html) | [Observation](StructureDefinition-chmed16af-obs-prematurebaby.html)  | MedicalData.Prem| @p    | 
| Time of gestation  | [Time of gestation only if Premature Baby](Observation-chmed16af-observation-s01-timeofgestation.html) | [Observation](StructureDefinition-chmed16af-obs-timeofgestation.html)  | MedicalData.ToG.Weeks, MedicalData.ToG.Day| @tw, @td   | 
| Risks per group  |   [Renal Insufficiency](Condition-chmed16af-mp-condition-s01-1.html)  | [Condition](StructureDefinition-chmed16af-condition-risks.html)  | MedicalData.RC| @r1 |
| Risks per group  |   [Liver Insufficiency](Condition-chmed16af-mp-condition-s01-2.html)  | [Condition](StructureDefinition-chmed16af-condition-risks.html)  | MedicalData.RC| @r2 |
| Risks per group  |   [Reproduction](Condition-chmed16af-mp-condition-s01-3.html)  | [Condition](StructureDefinition-chmed16af-condition-risks.html)  | MedicalData.RC| @r3 |
| Risks per group  |   [Competitive athlete](Condition-chmed16af-mp-condition-s01-4.html)  | [Condition](StructureDefinition-chmed16af-condition-risks.html)  | MedicalData.RC| @r4 |
| Risks per group  |   [Driver](Condition-chmed16af-mp-condition-s01-5.html)  | [Condition](StructureDefinition-chmed16af-condition-risks.html)  | MedicalData.RC| @r5 |
| Risks per group  |   [Allergies](Condition-chmed16af-mp-condition-s01-6.html)  | [Condition](StructureDefinition-chmed16af-condition-risks.html)  | MedicalData.RC| @r6 |

 
# PolymedicationCheck

Swiss community pharmacies can offer a [Polymedication Check](http://www.pharmasuisse.org/de/dienstleistungen/Themen/Seiten/Polymedikationscheck.aspx) (PMC) to patients on greater or equals four prescribed drugs taken over more then 3 months.

## Bundle

{% include img.html img="bundle_polymedicationcheck.png" caption="Polymedication Check" %}

The FHIR ressource Bundle bundles the corresponding entroes in a document. It contains

* The profile this bundle correspons to (chmed16af-pmc-bundle)
* The type of the bundle (fixed here on "document")
* An entry to the composition, the actual document that references different resources (further entry elements in the bundle)
* Further entry elements to the patient, medication entries, etc.

[Profile for PolymedicationCheck](StructureDefinition-chmed16af-pmc-bundle.html) &#124; [Example for PolymedicationCheck (xml)](Bundle-chmed16af-pmc-bundle-s01.xml.html)

## Compostion

The Composition ressource defines the following parameter for the PolymedicationCheck:

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| subject  | Reference to the Patient  | Patient  | Patient | &lt;P&gt;    | 
| identifier  | Logical identifier for document (GUID)  | Identifier  | id  | @i | 
| date  | Date of creation  |  dateTime | Dt | @c  | 
| author  | Author (Gln if available, otherwise name)  | Practitioner  | Auth | &lt;A&gt;  | 
| section | medications |  MedicationStatement | Medicaments | &lt;M&gt;  | 
| section | recommendations |  - | Recoms | &lt;@r&gt;  | 

[Profile for PolymedicationCheck Composition](StructureDefinition-chmed16af-pmc-composition.html) &#124; [Example for Composition (xml)](Composition-chmed16af-pmc-composition-s01.xml.html)

## Patient

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| identifier  | Insurance card number for this patient  | Identifier  | Patient.PatientId[Type=1] | @i    | 
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName | @g, @f    | 
| telecom  | telephone number  | ContactPoint  | Patient.Phone | @t    | 
| gender  | gender  | code  | Patient.gender, male=1, female=2 | @g=m or f | 
| birthDate  | the date of birth  | date  |Patient.BDt | @b | 
| address  | address for the patient  | date  |address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City | @l, @p, @c | 

[Profile for Patient](StructureDefinition-chmed16af-pmcrx-patient.html) &#124; [Example for Patient (xml)](Patient-chmed16af-pmcrx-patient-s01.xml.html)

## Practitioner

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| identifier  | GLN for this practitioner  | Identifier  | Author.GLN | @i    | 
| name  | Name for this practitioner  | HumanName  | name.given = Author.FName, name.family = Author.LName | @g, @f    | 

[Profile for Practitioner](StructureDefinition-chmed16af-practitioner.html) &#124; [Example for Practitioner (xml)](Practitioner-chmed16af-practitioner-s01.xml.html)


## Medication Section 
The medication section contains the entries for the current medications for patient. 

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| medicationReference  | reference to Medication  | Medication  | Medication.ID with IdTpye 2 (GTIN) | @i    | 
| informationSource  | Person or organization that provided the information about the taking of this medication  | Patient or Practitioner  | Selfmedication (AutoMed) if Patient is informationSource, PrescrBy if Practitioner | @s=1 or 0    | 
| reasonCode  | Reason for why the medication is being/was taken  | CodeableConcept  | Medication.TkgRsn (Taking Reason) | @r  | 
| note  | Application Instructions  | Annotation  |Medication.AppInstr | @n  | 
| dosage  | Details of how medication is/was taken or should be taken  | Dosage  | Medication.Pos (list of Posology) | &lt;D&gt;  | 
| dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, CyDu, InRes, SimpliedVersion of taking times onlys | @s, @e, @p, @r, (@m, @d, @v, @h)   | 
| dosage.dose[x]  |Amount of medication per dose. | Range or Quantity  | doseSimpleQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.doTo | @u, @dl, @dh |
| dosage.maxDosePerPeriod  | Amount of medication per dose. | Ratio  | TakingTime.MA | @dm |

[Profile for MedicationStatmeent](StructureDefinition-chmed16af-mp-medicationstatement.html) &#124; [Profile for Medication](StructureDefinition-chmed16af-medication.html)

Examples for MedicationStatements [1](MedicationStatement-chmed16af-mp-medicationstatement-s01-1.html) &#124; [2](MedicationStatement-chmed16af-mp-medicationstatement-s01-2.html) &#124; [3](MedicationStatement-chmed16af-mp-medicationstatement-s01-3.html) &#124; [4](MedicationStatement-chmed16af-mp-medicationstatement-s01-4.html)

## Recommendation Section 
The recommendation section contains the entry for the recommendations of the Poly Medication Check:

 1: week dosing system by the pharmacist                             
 2: Intensified compliance support                                     
 3: Repeat check in ... months                                        
 4: Forwarding to doctor / other specialist                            
 5: Needs analysis (e.g., interactions, side effects, duplications) 

The answer to this questions are provided in a QuestionnaireResponse resource [profile](StructureDefinition-chmed16af-pmc-questionnaireresponse.html) according to the [Questionnaire](Questionnaire-chmed16af-pmc-questionnaire.html) defined if a) which question was raised with the patient b) if the patient agrees and c) if there is an additional remark.

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| item.linkId  | Questionnaire number  | QuestionnaireResponse  | Recommendation.Id | &lt;Q&gt; @n  | 
| item[linkId="n.1"]/answer/valueBoolean  | Question was asked | Boolean  | id  | @q | 
| item[linkId="n.2"]/answer/valueBoolean  | Patient agreed |  Boolean | PatAgr | @p  | 
| item[linkId="n.3"]/answer/valueString  | Patient agreed |  Boolean | Remark | @r  | 

[Profile for Questionnaire Response](StructureDefinition-chmed16af-pmc-questionnaireresponse.html) &#124; [Example for Questionnare Response](QuestionnaireResponse-chmed16af-pmc-questionnaireresponse-s01.html)

# Prescription
A prescription can be structured in a bundle according to the prescription bundle profile.

## Bundle

{% include img.html img="bundle_prescription.png" caption="Prescription" %}

The FHIR ressource Bundle bundles the corresponding entroes in a document. It contains

* The profile this bundle correspons to (chmed16af-rx-bundle)
* The type of the bundle (fixed here on "document")
* An entry to the composition, the actual document that references different resources (further entry elements in the bundle)
* Further entry elements to the patient, medication entries, etc.

[Profile for Prescription](StructureDefinition-chmed16af-rx-bundle.html) &#124; [Example for Prescription (xml)](Bundle-chmed16af-rx-bundle-s01.xml.html)

## Compostion

The Composition ressource defines the following parameter for the Prescription:

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| subject  | Reference to the Patient  | Patient  | Patient | &lt;P&gt;    | 
| identifier  | Logical identifier for document (GUID)  | Identifier  | id  | @i | 
| date  | Date of creation  |  dateTime | Dt | @d  | 
| author  | Author (Gln if available, otherwise name)  | Practitioner  | Auth | &lt;A&gt;  | 
| section | medications |  MedicationAdminstration | Medicaments | &lt;M&gt;  | 
| section | note |  - | Rmk | &lt;@n&gt;  | 

[Profile for Prescription Composition](StructureDefinition-chmed16af-rx-composition.html) &#124; [Example for Prescription (xml)](Composition-chmed16af-rx-composition-s01.xml.html)

## Patient

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| identifier  | Insurance card number for this patient  | Identifier  | Patient.PatientId[Type=1] | @i    | 
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName | @g, @f    | 
| telecom  | telephone number  | ContactPoint  | Patient.Phone | @t    | 
| gender  | gender  | code  | Patient.gender, male=1, female=2 | @g=m or f | 
| birthDate  | the date of birth  | date  |Patient.BDt | @b | 
| address  | address for the patient  | date  |address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City | @l, @p, @c | 

[Profile for Patient](StructureDefinition-chmed16af-pmcrx-patient.html) &#124; [Example for Patient (xml)](Patient-chmed16af-pmcrx-patient-s01.xml.html)

## Practitioner

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| identifier  | GLN for this practitioner  | Identifier  | Author.GLN | @i    | 
| identifier  | ZSR for this practitioner  | Identifier  | ZSR-Number of the organisation | @z    | 
| name  | Name for this practitioner  | HumanName  | name.given = Author.FName, name.family = Author.LName | @g, @f    | 

[Profile for Practitioner](StructureDefinition-chmed16af-practitioner.html) &#124; [Example for Practitioner (xml)](Practitioner-chmed16af-practitioner-s01.xml.html)


## Medication Prescribed Section 
The medication section contains the entries for the prescriped medications for the patient. 

| Parameter  | Description | Resource/Datatype    | CHMED16A | CHMED16AQ  |
| ------------- | ------------- | -------------  | ------------- | -------------  | 
| medicationReference  | reference to Medication  | Medication  | Medication.ID with IdTpye 2 (GTIN) | @i    | 
| note  | Application Instructions  | Annotation  |Medication.AppInstr | @n  | 
| dosage  | Details of how medication is/was taken or should be taken  | Dosage  | Medication.Pos (list of Posology) | &lt;D&gt;  | 
| dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, CyDu, InRes, SimpliedVersion of taking times onlys | @s, @e, @p, @r, (@m, @d, @v, @h)   | 
| dosage.dose[x]  |Amount of medication per dose. | Range or Quantity  | doseSimpleQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.doTo | @u, @dl, @dh |
| dosage.maxDosePerPeriod  | Amount of medication per dose. | Ratio  | TakingTime.MA | @dm |
| dispenseRequest.numberOfRepeatsAllowed | Number of repetitions allowed  | Medication  | Rep | @dn    | 
| dispenseRequest.quantity  | Number of package to be delivered  | Medication  | NbPack | @dq    | 
| substitution.allowed  |  Medication is substitutable    | Medication  | Subs negated | @sa   | 

[Profile for MedicationRequest](StructureDefinition-chmed16af-rx-medicationrequest.html) &#124; [Profile for Medication](StructureDefinition-chmed16af-medication.html)

Examples for MedicationRequest [1](MedicationStatement-chmed16af-rx-medicationrequest-s01-1.html)
