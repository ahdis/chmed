# Introduction

CHMED16A and CHMED20AF define three different exchange formats:
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

* The profile this bundle correspons to (chmed20af-mp-bundle)
* The type of the bundle (fixed here on "document")
* An entry to the composition, the actual document that references different resources (further entry elements in the bundle)
* Further entry elements to the patient, medication plan entries, etc.

[Profile for Medication Plan](StructureDefinition-chmed20af-mp-bundle.html) &#124; [Example for Medication Plan (xml)](Bundle-chmed20af-mp-bundle-s01.xml.html)
## Composition

The Composition ressource defines the following parameter for the medication plan:

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| subject  | Reference to the Patient  | Patient  | Patient |
| identifier  | Logical identifier for document (GUID)  | Identifier  | id  |
| date  | Date of creation  |  dateTime | Dt |
| author  | Author (Gln if available, otherwise name)  | Practitioner  | Auth |
| attester.time  | Date of validation  | Practitioner  | ValDt | 
| attester.party  | Validated by GLN of practitionier  |  Practitioner | ValBy | 
| section | medications |  MedicationStatement | Medicaments |
| section | healthconcerns |  Entry | MedicalData |
| section | notes |  text | Rmk |
| receiver | Practitioner GLN if receiver |  [Practitioner](StructureDefinition-chmed20af-receiver.html) | Patient.RCV (GLN of receiver) |  

[Profile for Medication Plan Composition](StructureDefinition-chmed20af-mp-composition.html)


## Patient

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | Insurance card number for this patient  | Identifier  | Patient.PatientId[Type=1] |
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName |
| telecom  | telephone number  | ContactPoint  | Patient.Phone | 
| gender  | gender  | code  | Patient.gender, male=1, female=2 |
| birthDate  | the date of birth  | date  |Patient.BDt |
| address  | address for the patient  | Address  |address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City |
| communication.language  | language for the patient  | CodeableConcept  |Patient.Lng conversion between ISO 639-1 (de) to urn:ietf:cbp:47 (de_CH) necessary" |

[Profile for Medication Plan Patient](StructureDefinition-chmed20af-mp-patient.html) &#124; [Example for Patient](Patient-chmed20af-mp-patient-s01.html)


## Practitioner

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Author.GLN |
| name  | Name for this practitioner  | HumanName  | name.given = Author.FName, name.family = Author.LName |

[Profile for Practitioner](StructureDefinition-chmed20af-practitioner.html) &#124; [Example for Practitioner (xml)](Practitioner-chmed20af-practitioner-s01.xml.html)


## Medication Section 
The medication section contains the entries for the current medications for patient. 

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- | 
| medicationReference  | reference to Medication  | Medication  | Medication.ID with IdTpye 2 (GTIN) |
| informationSource  | Person or organization that provided the information about the taking of this medication  | Patient or Practitioner  | Selfmedication (AutoMed) if Patient is informationSource, PrescrBy if Practitioner |
| reasonCode  | Reason for why the medication is being/was taken  | CodeableConcept  | Medication.TkgRsn (Taking Reason) | 
| note  | Application Instructions  | Annotation  |Medication.AppInstr |
| dosage  | Details of how medication is/was taken or should be taken  | Dosage  | Medication.Pos (list of Posology) | 
| dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, CyDu, InRes | 
| dosage.route  | How drug should enter body | CodeableConect  | Medication.Roa |
| dosage.doseQuantity  |Amount of medication per dose. | Quantity  | doseSimpleQuantity: TakingTime.A, doseRange: TakingTime.DoFrom |
| dosage.maxDosePerPeriod  | Amount of medication per dose. | Ratio  | TakingTime.MA |

[Profile for MedicationStatement](StructureDefinition-chmed20af-mp-medicationstatement.html) &#124; [Profile for Medication](StructureDefinition-chmed20af-medication.html)

Examples for MedicationStatements [1](MedicationStatement-chmed20af-mp-medicationstatement-s01-1.html) &#124; [2](MedicationStatement-chmed20af-mp-medicationstatement-s01-2.html) &#124; [3](MedicationStatement-chmed20af-mp-medicationstatement-s01-3.html) &#124; [4](MedicationStatement-chmed20af-mp-medicationstatement-s01-4.html)


## Health Concerns Section 
The health concern sections contains the medical data for the patient and the possible risks. If the risk category is specified without any risk specified in the code, the entire risk category is considered as explicitly excluded for the current patient. If the risk category does not exist, the risks are considered as unknown for the patient.

{:class="table table-bordered"}
| Entry  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| Body Weight  | [Weight measurement for patient in kg](Observation-chmed20af-mp-observation-s01-bodyweight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyweight)  | MedicalData.Meas.Weight |
| Body Height  | [Weight measurement for patient in cm](Observation-chmed20af-mp-observation-s01-bodyheight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyheight)  | MedicalData.Meas.Height | 
| First day of last menstruation  | [First day of last menstruation](Observation-chmed20af-observation-s01-dateoflastmenustration.html) | [Observation](StructureDefinition-chmed20af-obs-dateoflastmenstruation.html)  | MedicalData.DLstMen |
| Premature baby  | [premature baby true only if age &lt;= 18 months](Observation-chmed20af-observation-s01-prematurebaby.html) | [Observation](StructureDefinition-chmed20af-obs-prematurebaby.html)  | MedicalData.Prem| 
| Time of gestation  | [Time of gestation only if Premature Baby](Observation-chmed20af-observation-s01-timeofgestation.html) | [Observation](StructureDefinition-chmed20af-obs-timeofgestation.html)  | MedicalData.ToG.Weeks, MedicalData.ToG.Day| 
| Risks per group  |   [Renal Insufficiency](Condition-chmed20af-mp-condition-s01-1.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Liver Insufficiency](Condition-chmed20af-mp-condition-s01-2.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Reproduction](Condition-chmed20af-mp-condition-s01-3.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Competitive athlete](Condition-chmed20af-mp-condition-s01-4.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Driver](Condition-chmed20af-mp-condition-s01-5.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Allergies](Condition-chmed20af-mp-condition-s01-6.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|


# PolymedicationCheck

Swiss community pharmacies can offer a [Polymedication Check](http://www.pharmasuisse.org/de/dienstleistungen/Themen/Seiten/Polymedikationscheck.aspx) (PMC) to patients on greater or equals four prescribed drugs taken over more then 3 months.


## Bundle

{% include img.html img="bundle_polymedicationcheck.png" caption="Polymedication Check" %}

The FHIR ressource Bundle bundles the corresponding entries in a document. It contains

* The profile this bundle correspons to (chmed20af-pmc-bundle)
* The type of the bundle (fixed here on "document")
* An entry to the composition, the actual document that references different resources (further entry elements in the bundle)
* Further entry elements to the patient, medication entries, etc.

[Profile for PolymedicationCheck](StructureDefinition-chmed20af-pmc-bundle.html) &#124; [Example for PolymedicationCheck (xml)](Bundle-chmed20af-pmc-bundle-s01.xml.html)


## Compostion

The Composition ressource defines the following parameter for the PolymedicationCheck:

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| subject  | Reference to the Patient  | Patient  | Patient | 
| identifier  | Logical identifier for document (GUID)  | Identifier  | id  |
| date  | Date of creation  |  dateTime | Dt | 
| author  | Author (Gln if available, otherwise name)  | Practitioner  | Auth |
| section | medications |  MedicationStatement | Medicaments | 
| section | recommendations |  - | Recoms | 

[Profile for PolymedicationCheck Composition](StructureDefinition-chmed20af-pmc-composition.html)


## Patient

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- | 
| identifier  | Insurance card number for this patient  | Identifier  | Patient.PatientId[Type=1] |
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName |
| telecom  | telephone number  | ContactPoint  | Patient.Phone | 
| gender  | gender  | code  | Patient.gender, male=1, female=2 | 
| birthDate  | the date of birth  | date  |Patient.BDt | 
| address  | address for the patient  | date  | address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City |

[Profile for Patient](StructureDefinition-chmed20af-pmcrx-patient.html) &#124; [Example for Patient (xml)](Patient-chmed20af-mp-patient-s01.xml.html)


## Practitioner

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Author.GLN |
| name  | Name for this practitioner  | HumanName  | name.given = Author.FName, name.family = Author.LName |

[Profile for Practitioner](StructureDefinition-chmed20af-practitioner.html) &#124; [Example for Practitioner (xml)](Practitioner-chmed20af-practitioner-s01.xml.html)


## Medication Section 
The medication section contains the entries for the current medications for patient. 

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| medicationReference  | reference to Medication  | Medication  | Medication.ID with IdTpye 2 (GTIN) | 
| informationSource  | Person or organization that provided the information about the taking of this medication  | Patient or Practitioner  | Selfmedication (AutoMed) if Patient is informationSource, PrescrBy if Practitioner |
| reasonCode  | Reason for why the medication is being/was taken  | CodeableConcept  | Medication.TkgRsn (Taking Reason) | 
| note  | Application Instructions  | Annotation  | Medication.AppInstr |
| dosage  | Details of how medication is/was taken or should be taken  | Dosage  | Medication.Pos (list of Posology) | 
| dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, CyDu, InRes, SimpliedVersion of taking times onlys |
| dosage.dose[x]  | Amount of medication per dose. | Quantity  | TakingTime.A, TakingTime.DoFrom, TakingTime.doTo) |
| dosage.maxDosePerPeriod  | Amount of medication per dose. | Ratio  | TakingTime.MA |

[Profile for MedicationStatmeent](StructureDefinition-chmed20af-mp-medicationstatement.html) &#124; [Profile for Medication](StructureDefinition-chmed20af-medication.html)

Examples for MedicationStatements [1](MedicationStatement-chmed20af-mp-medicationstatement-s01-1.html) &#124; [2](MedicationStatement-chmed20af-mp-medicationstatement-s01-2.html) &#124; [3](MedicationStatement-chmed20af-mp-medicationstatement-s01-3.html) &#124; [4](MedicationStatement-chmed20af-mp-medicationstatement-s01-4.html)


## Recommendation Section 
The recommendation section contains the entry for the recommendations of the Poly Medication Check:

 1: week dosing system by the pharmacist                             
 2: Intensified compliance support                                     
 3: Repeat check in ... months                                        
 4: Forwarding to doctor / other specialist                            
 5: Needs analysis (e.g., interactions, side effects, duplications) 

The answer to this questions are provided in a QuestionnaireResponse resource [profile](StructureDefinition-chmed20af-pmc-questionnaireresponse.html) according to the [Questionnaire](Questionnaire-chmed20af-pmc-questionnaire.html) defined if a) which question was raised with the patient b) if the patient agrees and c) if there is an additional remark.

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- | 
| item.linkId  | Questionnaire number  | QuestionnaireResponse  | Recommendation.Id |
| item[linkId="n.1"]/answer/valueBoolean  | Question was asked | Boolean  | id  | 
| item[linkId="n.2"]/answer/valueBoolean  | Patient agreed |  Boolean | PatAgr | 
| item[linkId="n.3"]/answer/valueString  | Patient agreed |  Boolean | Remark |

[Profile for Questionnaire Response](StructureDefinition-chmed20af-pmc-questionnaireresponse.html) &#124; [Example for Questionnare Response](QuestionnaireResponse-chmed20af-pmc-questionnaireresponse-s01.html)


# Prescription
A prescription can be structured in a bundle according to the prescription bundle profile.


## Bundle

{% include img.html img="bundle_prescription.png" caption="Prescription" %}

The FHIR ressource Bundle bundles the corresponding entroes in a document. It contains

* The profile this bundle correspons to (chmed20af-rx-bundle)
* The type of the bundle (fixed here on "document")
* An entry to the composition, the actual document that references different resources (further entry elements in the bundle)
* Further entry elements to the patient, medication entries, etc.

[Profile for Prescription](StructureDefinition-chmed20af-rx-bundle.html) &#124; [Example for Prescription (xml)](Bundle-chmed20af-rx-bundle-s01.xml.html)


## Compostion

The Composition ressource defines the following parameter for the Prescription:

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| subject  | Reference to the Patient  | Patient  | Patient |
| identifier  | Logical identifier for document (GUID)  | Identifier  | id  |
| date  | Date of creation  |  dateTime | Dt |
| author  | Author (Gln if available, otherwise name)  | Practitioner  | Auth |
| section | medications |  MedicationAdminstration | Medicaments | 
| section | note |  - | Rmk | 

[Profile for Prescription Composition](StructureDefinition-chmed20af-rx-composition.html)


## Patient

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- | 
| identifier  | Insurance card number for this patient  | Identifier  | Patient.PatientId[Type=1] |
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName | 
| telecom  | telephone number  | ContactPoint  | Patient.Phone |
| gender  | gender  | code  | Patient.gender, male=1, female=2 |
| birthDate  | the date of birth  | date  |Patient.BDt | 
| address  | address for the patient  | date  |address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City |

[Profile for Patient](StructureDefinition-chmed20af-pmcrx-patient.html) &#124; [Example for Patient (xml)](Patient-chmed20af-mp-patient-ext.xml.html)


## Practitioner

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Author.GLN |
| identifier  | ZSR for this practitioner  | Identifier  | ZSR-Number of the organisation | 
| name  | Name for this practitioner  | HumanName  | name.given = Author.FName, name.family = Author.LName | 

[Profile for Practitioner](StructureDefinition-chmed20af-practitioner.html) &#124; [Example for Practitioner (xml)](Practitioner-chmed20af-practitioner-s01.xml.html)


## Medication Prescribed Section 
The medication section contains the entries for the prescriped medications for the patient. 

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| medicationReference  | reference to Medication  | Medication  | Medication.ID with IdTpye 2 (GTIN) |
| note  | Application Instructions  | Annotation  |Medication.AppInstr |
| dosage  | Details of how medication is/was taken or should be taken  | Dosage  | Medication.Pos (list of Posology) | 
| dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, CyDu, InRes, SimpliedVersion of taking times onlys | 
| dosage.dose[x]  | Amount of medication per dose. | Quantity  | TakingTime.A, TakingTime.DoFrom, TakingTime.doTo) |
| dosage.maxDosePerPeriod  | Amount of medication per dose. | Ratio  | TakingTime.MA |
| dispenseRequest.numberOfRepeatsAllowed | Number of repetitions allowed  | Medication  | Rep | 
| dispenseRequest.quantity  | Number of package to be delivered  | Medication  | NbPack |
| substitution.allowed  |  Medication is substitutable    | Medication  | Subs negated | 

[Profile for MedicationRequest](StructureDefinition-chmed20af-rx-medicationrequest.html) &#124; [Profile for Medication](StructureDefinition-chmed20af-medication.html)

Examples for MedicationRequest [1](MedicationRequest-chmed20af-rx-medicationrequest-s01-1.html)
