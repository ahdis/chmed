CHMED21A and CHMED21AF define two different exchange formats:
1. [Medication Card document](#medication-card-document) (CHMED21A: MedicationPlan (MP))
2. [Medication Prescription document](#medication-prescription-document) (CHMED21A: Prescription (Rx))


### Medication Card document
The Medication Card document describes the **current medication** of a patient, medications (MORE) that have been, is or will be taken by the patient.

#### Bundle
This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="bundle_medicationplan.png" caption="Fig.: Bundle Medication Card document" width="35%" %}

CHMED20AF Medication Card document: 
[Profile](StructureDefinition-chmed20af-card-bundle.html), 
[Examples](StructureDefinition-chmed20af-card-bundle-examples.html)


#### Composition
The [Composition](http://www.hl7.org/fhir/composition.html) resource defines the following set of healthcare-related information that is assembled together into a single Medication Card document. The Composition resource provides the basic structure of a FHIR document.

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
| informationRecipient | Extension (Practitioner or Patient or RelatedPerson or Organization) | Rcv | Medication.Rcv ??? |
| privatefield | Extension:name/value (string) | Private Field: Name and value of the field | Medication.PFs.Nm/Val |
| identifier | Identifier | Id of the Medication object | Medication.Id |
| type | code | Type of the Medication object -> 1: MedicationPlan (MP) | Medciation.MedType |
| subject | Reference (Patient) | Patient | Medication.Patient |
| date | dateTime | Date of creation | Medication.Dt |
| author | Reference (Practitioner or PractitionerRole or Device or Patient or RelatedPerson or Organization) | Author of the document (Gln if available, otherwise name) | Medication.Auth ??? |
| author | PAT HCP ASS REP TCU | [Role of the author](http://build.fhir.org/ig/hl7ch/ch-epr-term/ValueSet-DocumentEntry.authorRole.html) | Medication.AuthR ??? |
| section:card | Reference (MedicationStatement) | List of medicaments | Medication.Meds |
| section:annotation | text | Remark |  Medication.Rmk |  
| section:healthconcerns | Reference (Observation and Condition) | Health data of the patient | MedicalData |

CHMED20AF Medication Card Composition: 
[Profile](StructureDefinition-chmed20af-card-composition.html), 
[Examples](StructureDefinition-chmed20af-card-composition-examples.html)


#### Patient
The [Patient](https://www.hl7.org/fhir/patient.html) resource defines the following information about the patient involved in the medication activity.

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| privatefield | Private Field | Extension (string) | Patient.PFields |
| identifier  | Local identifier for this patient  | Identifier  | Patient.Id with PatientId.Type (LocalPatientIdentifier = 2) |
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName |
| telecom  | Telephone number  | ContactPoint  | Patient.Phone | 
| gender  | Gender  | code  | Patient.Gender, Male = 1, Female = 2 |
| birthDate  | Date of birth  | date  | Patient.BDt |
| address  | Address for the patient  | Address  | address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City |
| communication.language  | Language of the patient  | CodeableConcept  | Patient.Lng conversion between ISO 639-1 (de) to urn:ietf:cbp:47 (de_CH) necessary" |

CHMED20AF Patient (Card): 
[Profile](StructureDefinition-chmed20af-card-patient.html), 
[Examples](StructureDefinition-chmed20af-card-patient-examples.html)


#### Practitioner

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Auth.Gln |
| name  | Name for this practitioner  | HumanName  | name.given = Auth.FName, name.family = Auth.LName |

CHMED20AF Practitioner: 
[Profile](StructureDefinition-chmed20af-practitioner.html), 
[Examples](StructureDefinition-chmed20af-practitioner-examples.html)


#### Medication Section 
The medication section contains the entries for the current medication for a patient. 

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- | 
| privatefield | Private Field | Extension (string) | Medicament.PFields |
| medicationReference  | Reference to Medication  | Medication | Medicament.Id with Medicament.IdType 2 (GTIN) |
| subject | Reference to Patient | Patient | Patient |
| informationSource  | Person that provided the information about the taking of this medication | Patient or Practitioner  | Medicament.AutoMed (Selfmedication) if Patient, Medicament.PrscbBy if Practitioner |
| reasonCode  | Taking reason  | text  | Medicament.TkgRsn | 
| dosage:nonstructured  | Application Instructions  | Dosage | Medicament.AppInstr |
| dosage:structured | List of Posology | Dosage | Medicament.Pos |
| Dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, Posology.CyDu, Posology.InRes | 
| Dosage.route  | How drug should enter body | CodeableConect | Medicament.Roa |
| Dosage.doseAndRate.dose[x] | Amount of medication per dose | SimpleQuantity, Range | doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo |
| Dosage.maxDosePerPeriod  | Amount of medication per dose | Ratio  | TakingTime.MA |

CHMED20AF MedicationStatement: 
[Profile](StructureDefinition-chmed20af-card-medicationstatement.html), 
[Examples](StructureDefinition-chmed20af-card-medicationstatement-examples.html)


#### Health Concerns Section 
The health concern section contains the medical data for the patient and the possible risks. If the risk category is specified without any risk specified in the code, the entire risk category is considered as explicitly excluded for the current patient. If the risk category does not exist, the risks are considered as unknown for the patient.

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Entry  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| Body Weight  | [Weight measurement for patient in kg](Observation-card-observation-s01-bodyweight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyweight)  | MedicalData.Meas.Weight |
| Body Height  | [Height measurement for patient in cm](Observation-card-observation-s01-bodyheight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyheight)  | MedicalData.Meas.Height | 
| First day of last menstruation  | [First day of last menstruation](Observation-card-observation-s01-dateoflastmenstruation.html) | [Observation](StructureDefinition-chmed20af-obs-dateoflastmenstruation.html)  | MedicalData.DLstMen |
| Premature baby  | [Premature baby true only if age &lt;= 18 months](Observation-card-observation-s01-prematurebaby.html) | [Observation](StructureDefinition-chmed20af-obs-prematurebaby.html)  | MedicalData.Prem| 
| Time of gestation  | [Time of gestation only if Premature Baby](Observation-card-observation-s01-timeofgestation.html) | [Observation](StructureDefinition-chmed20af-obs-timeofgestation.html)  | MedicalData.ToG.Weeks + MedicalData.ToG.Day | 
| Risks per group  |   [Renal Insufficiency](Condition-card-condition-s01-1-renalinsufficiency.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Liver Insufficiency](Condition-card-condition-s01-2-liverinsufficiency.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Reproduction](Condition-card-condition-s01-3-reproduction.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Competitive athlete](Condition-card-condition-s01-4-competitiveathlete.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Driver](Condition-card-condition-s01-5-driver.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Allergies](Condition-card-condition-s01-6-allergies.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|



### Medication Prescription document
The Medication Prescription document describes the content and format of a prescription document generated during the process in which a health care professional decides that the **patient needs medication** (ONE or MORE).

#### Bundle
This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="bundle_prescription.png" caption="Fig.: Bundle Medication Prescription document" width="35%" %}

CHMED20AF Medication Prescription document: 
[Profile](StructureDefinition-chmed20af-pre-bundle.html), 
Examples(StructureDefinition-chmed20af-pre-bundle-examples.html)


#### Composition
The [Composition](http://www.hl7.org/fhir/composition.html) resource defines the following set of healthcare-related information that is assembled together into a single Medication Prescription document. The Composition resource provides the basic structure of a FHIR document.


{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
 
| type | Type of medication object, 2: Prescription (Rx) | code | MedType |
| subject  | Reference to the Patient  | Patient  | Patient |
| date  | Date of creation  |  dateTime | Dt |
| author  | Author | Practitioner | Auth |
| attester:professionalAuthenticator.time  | Validate date: Date of validation  | dateTime  | ValDt | 
| attester:professionalAuthenticator.party  | Validated by: The Gln of the practitionier |  Practitioner | ValBy | 
| section:prescription | List of medicaments |  MedicationRequest | Medicaments |
| section:annotation | Notes |  text | Rmk |

CHMED20AF Medication Prescription Composition: 
[Profile](StructureDefinition-chmed20af-pre-composition.html), 
[Examples](StructureDefinition-chmed20af-pre-composition-examples.html)


#### Patient
The [Patient](https://www.hl7.org/fhir/patient.html) resource defines the following information about the patient involved in the medication activity.


{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- | 
| privatefield | Private Field | Extension (string) | Patient.PFields |
| identifier  | Local identifier for this patient  | Identifier  | Patient.Id with PatientId.Type (LocalPatientIdentifier = 2) |
| name  | Name for this patient  | HumanName  | name.given = Patient.FName, name.family = Patient.LName | 
| telecom  | Telephone number  | ContactPoint  | Patient.Phone |
| gender  | Gender  | code  | Patient.Gender, Male = 1, Female = 2 |
| birthDate  | Date of birth  | date  | Patient.BDt | 
| address  | Address for the patient  | Address |address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City |

CHMED20AF Patient (Pre): 
[Profile](StructureDefinition-chmed20af-pre-patient.html), 
Examples(StructureDefinition-chmed20af-pre-patient-examples.html)


#### Practitioner

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Auth.Gln |
| identifier  | ZSR for this practitioner  | Identifier  | ZSR-Number of the organisation | 
| name  | Name for this practitioner  | HumanName  | name.given = Auth.FName, name.family = Auth.LName | 

CHMED20AF Practitioner: 
[Profile](StructureDefinition-chmed20af-practitioner.html), 
[Examples](StructureDefinition-chmed20af-practitioner-examples.html)


#### Medication Prescribed Section 
The medication section contains the entries for the prescriped medications for a patient. 

{:class="table table-bordered"}
| FHIR Element | Resource/Datatype | Description | CHMED21A |
| --- | --- | --- | --- |
|  |  |  |  |

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| privatefield | Private Field | Extension (string) | Medicament.PFields |
| medicationReference  | Reference to Medication  | Medication | Medicament.Id with Medicament.IdType 2 (GTIN) |
| subject | Reference to Patient | Patient | Patient |
| dosageInstruction:nonstructured  | Application Instructions  | Dosage | Medicament.AppInstr |
| dosageInstruction:structured | List of Posology | Dosage | Medicament.Pos |
| Dosage.timing  | When medication should be administered  | Timing  | Posology.DtFrom, Posology.DtTo, Posology.CyDu, Posology.InRes | 
| Dosage.route  | How drug should enter body | CodeableConect | Medicament.Roa |
| Dosage.doseAndRate.dose[x] | Amount of medication per dose | SimpleQuantity, Range | doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo |
| Dosage.maxDosePerPeriod  | Amount of medication per dose | Ratio  | TakingTime.MA |
| dispenseRequest.numberOfRepeatsAllowed | Number of repetitions allowed  | unsignedInt  | Medicament.Rep | 
| dispenseRequest.quantity  | Number of package to be delivered  | 	SimpleQuantity  | Medicament.NbPack |
| substitution.allowedCodeableConcept |  Medication is substitutable  | CodeableConcept  | Medicament.Subs | 

CHMED20AF MedicationRequest: 
[Profile](StructureDefinition-chmed20af-pre-medicationrequest.html), 
[Examples](StructureDefinition-chmed20af-pre-medicationrequest-examples.html)
