CHMED16A and CHMED20AF define two different exchange formats:
1. [Medication Card document](#medication-card-document) (CHMED16A: MedicationPlan (MP))
2. [Medication Prescription document](#medication-prescription-document) (CHMED16A: Prescription (Rx))

These exchange formats are defined in two different document types, which correspond to a Bundle as FHIR resource.
A Bundle has list of entries. The first entry is the Composition where all contained entries are then referenced.

### Medication Card document

The Medication Card document summarizes the entire, current medication of a patient.

#### Bundle

{% include img.html img="bundle_medicationplan.png" caption="Fig.: Bundle Medication Card document" width="50%" %}

The FHIR resource Bundle bundles the corresponding entries in a document. It contains

* the type of the Bundle (fixed value `document`),
* an entry to the Composition, the actual document that references different resources (further entry elements in the Bundle) and
* further entry elements to the patient, medication card entries, etc.

Medication Card document: [Profile](StructureDefinition-chmed20af-card-bundle.html), Example ([XML](Bundle-chmed20af-card-bundle-s01.xml.html), [JSON](Bundle-chmed20af-card-bundle-s01.json.html))


#### Composition

The Composition resource defines the following parameter for the Medication Card document:

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| informationRecipient | Receiver (Patient or Gln of receiver) |  Extension (Patient or Practitioner) | Patient or Patient.RCV (Gln of receiver) |  
| privatefield | Private Field | Extension (string) | PFields |
| identifier  | Logical identifier for document (GUID)  | Identifier  | Id  |
| type | Type of medication object, 1: MedicationPlan (MP) | code | MedType |
| subject  | Reference to the Patient  | Patient  | Patient |
| date  | Date of creation  |  dateTime | Dt |
| author  | Author | Practitioner | Auth |
| attester:professionalAuthenticator.time  | Validate date: Date of validation  | dateTime  | ValDt | 
| attester:professionalAuthenticator.party  | Validated by: The Gln of the practitionier |  Practitioner | ValBy | 
| section:card | List of medicaments |  MedicationStatement | Medicaments |
| section:healthconcerns | Health concerns |  Entry | MedicalData |
| section:annotation | Notes |  text | Rmk |

Composition Medication Card document: [Profile](StructureDefinition-chmed20af-card-composition.html), Example ([XML](Composition-chmed20af-card-composition-s01.xml.html), [JSON](Composition-chmed20af-card-composition-s01.json.html))


#### Patient

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

Patient (Medication Card document): [Profile](StructureDefinition-chmed20af-card-patient.html), Example ([XML](Patient-chmed20af-card-patient-s01.xml.html), [JSON](Patient-chmed20af-card-patient-s01.json.html))


#### Practitioner

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Auth.Gln |
| name  | Name for this practitioner  | HumanName  | name.given = Auth.FName, name.family = Auth.LName |

Practitioner: [Profile](StructureDefinition-chmed20af-practitioner.html), Example ([XML](Practitioner-chmed20af-practitioner-s01.xml.html), [JSON](Practitioner-chmed20af-practitioner-s01.json.html))


#### Medication Section 
The medication section contains the entries for the current medication for a patient. 

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

MedicationStatement: [Profile](StructureDefinition-chmed20af-card-medicationstatement.html), 
Example 1 ([XML](MedicationStatement-chmed20af-card-medicationstatement-s01-1.xml.html), [JSON](MedicationStatement-chmed20af-card-medicationstatement-s01-1.json.html)),
Example 2 ([XML](MedicationStatement-chmed20af-card-medicationstatement-s01-2.xml.html), [JSON](MedicationStatement-chmed20af-card-medicationstatement-s01-2.json.html)),
Example 3 ([XML](MedicationStatement-chmed20af-card-medicationstatement-s01-3.xml.html), [JSON](MedicationStatement-chmed20af-card-medicationstatement-s01-3.json.html)),
Example 4 ([XML](MedicationStatement-chmed20af-card-medicationstatement-s01-4.xml.html), [JSON](MedicationStatement-chmed20af-card-medicationstatement-s01-4.json.html))


#### Health Concerns Section 
The health concern section contains the medical data for the patient and the possible risks. If the risk category is specified without any risk specified in the code, the entire risk category is considered as explicitly excluded for the current patient. If the risk category does not exist, the risks are considered as unknown for the patient.

{:class="table table-bordered"}
| Entry  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| Body Weight  | [Weight measurement for patient in kg](Observation-chmed20af-card-observation-s01-bodyweight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyweight)  | MedicalData.Meas.Weight |
| Body Height  | [Weight measurement for patient in cm](Observation-chmed20af-card-observation-s01-bodyheight.html) | [Observation](http://hl7.org/fhir/StructureDefinition/bodyheight)  | MedicalData.Meas.Height | 
| First day of last menstruation  | [First day of last menstruation](Observation-chmed20af-observation-s01-dateoflastmenustration.html) | [Observation](StructureDefinition-chmed20af-obs-dateoflastmenstruation.html)  | MedicalData.DLstMen |
| Premature baby  | [premature baby true only if age &lt;= 18 months](Observation-chmed20af-observation-s01-prematurebaby.html) | [Observation](StructureDefinition-chmed20af-obs-prematurebaby.html)  | MedicalData.Prem| 
| Time of gestation  | [Time of gestation only if Premature Baby](Observation-chmed20af-observation-s01-timeofgestation.html) | [Observation](StructureDefinition-chmed20af-obs-timeofgestation.html)  | MedicalData.ToG.Weeks + MedicalData.ToG.Day | 
| Risks per group  |   [Renal Insufficiency](Condition-chmed20af-card-condition-s01-1.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Liver Insufficiency](Condition-chmed20af-card-condition-s01-2.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Reproduction](Condition-chmed20af-card-condition-s01-3.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Competitive athlete](Condition-chmed20af-card-condition-s01-4.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Driver](Condition-chmed20af-card-condition-s01-5.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|
| Risks per group  |   [Allergies](Condition-chmed20af-card-condition-s01-6.html)  | [Condition](StructureDefinition-chmed20af-condition-risks.html)  | MedicalData.RC|


### Medication Prescription document
A Medication Prescription document is generated during the process in which a health care professional decides that the patient needs medication.


#### Bundle

{% include img.html img="bundle_prescription.png" caption="Fig.: Bundle Medication Prescription document" width="50%" %}

The FHIR resource Bundle bundles the corresponding entries in a document. It contains

* the type of the Bundle (fixed value `document`),
* an entry to the Composition, the actual document that references different resources (further entry elements in the Bundle) and
* further entry elements to the patient, medication prescription entries, etc.

Medication Prescription document: [Profile](StructureDefinition-chmed20af-pre-bundle.html), Example ([XML](Bundle-chmed20af-pre-bundle-s01.xml.html), [JSON](Bundle-chmed20af-pre-bundle-s01.json.html))


#### Composition

The Composition resource defines the following parameter for the Medication Prescription document:

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| informationRecipient | Receiver (Patient or Gln of receiver) |  Extension (Patient or Practitioner) | Patient or Patient.RCV (Gln of receiver) |  
| privatefield | Private Field | Extension (string) | PFields |
| identifier  | Logical identifier for document (GUID)  | Identifier  | Id  |
| type | Type of medication object, 2: Prescription (Rx) | code | MedType |
| subject  | Reference to the Patient  | Patient  | Patient |
| date  | Date of creation  |  dateTime | Dt |
| author  | Author | Practitioner | Auth |
| attester:professionalAuthenticator.time  | Validate date: Date of validation  | dateTime  | ValDt | 
| attester:professionalAuthenticator.party  | Validated by: The Gln of the practitionier |  Practitioner | ValBy | 
| section:prescription | List of medicaments |  MedicationRequest | Medicaments |
| section:annotation | Notes |  text | Rmk |

Composition Medication Prescription document: [Profile](StructureDefinition-chmed20af-pre-composition.html), Example ([XML](Composition-chmed20af-pre-composition-s01.xml.html), [JSON](Composition-chmed20af-pre-composition-s01.json.html))


#### Patient

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

Patient (Medication Prescription document): [Profile](StructureDefinition-chmed20af-pre-patient.html), Example ([XML](Patient-chmed20af-pre-patient-s01.xml.html), [JSON](Patient-chmed20af-pre-patient-s01.json.html))


#### Practitioner

{:class="table table-bordered"}
| Parameter  | Description | Resource/Datatype    | CHMED16A |
| ------------- | ------------- | -------------  | ------------- |
| identifier  | GLN for this practitioner  | Identifier  | Auth.Gln |
| identifier  | ZSR for this practitioner  | Identifier  | ZSR-Number of the organisation | 
| name  | Name for this practitioner  | HumanName  | name.given = Auth.FName, name.family = Auth.LName | 

Practitioner: [Profile](StructureDefinition-chmed20af-practitioner.html), Example ([XML](Practitioner-chmed20af-practitioner-s01.xml.html), [JSON](Practitioner-chmed20af-practitioner-s01.json.html))


#### Medication Prescribed Section 
The medication section contains the entries for the prescriped medications for a patient. 

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

MedicationRequest: [Profile](StructureDefinition-chmed20af-pre-medicationrequest.html), Example ([XML](MedicationRequest-chmed20af-pre-medicationrequest-s01-1.xml.html), [JSON](MedicationRequest-chmed20af-pre-medicationrequest-s01-1.json.html))
