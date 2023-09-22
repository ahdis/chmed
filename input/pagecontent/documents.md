Two CHMED exchange formats are defined:
1. [Medication Card document (CARD)](#medication-card-document) (MedicationPlan (MP))
2. [Medication Prescription document (PRE)](#medication-prescription-document) (Prescription (Rx))

These exchange formats are defined as a [document](https://hl7.org/fhir/R4/documents.html) type that corresponds to a [Bundle](https://hl7.org/fhir/R4/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://hl7.org/fhir/R4/composition.html), in which all contained entries are then referenced.

{% include img.html img="documents.png" caption="Fig.: Schematic illustration of the FHIR documents for the exchange formats " width="70%" %}

### Medication Card document
The Medication Card document provides as complete an overview as possible of all **current medications** for a patient at a given point in time (such as the end of a hospitalization or other encounter). The purpose of this document is to inform the patient and clinicians (therapists, etc.) of the current medication information.

#### Bundle (CARD)
The Bundle resource defines the Medication Card document and its content, which are contained as entries.
* [Profile](StructureDefinition-chmed-card-bundle.html)
* [Mapping eMediplan](StructureDefinition-chmed-card-bundle-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* [Examples](StructureDefinition-chmed-card-bundle-examples.html)

#### Composition (CARD)
The Composition resource defines the healthcare-related information that is assembled together into a single Medication Card document. The Composition resource provides the basic structure of a FHIR document.
* [Profile](StructureDefinition-chmed-card-composition.html)
* [Mapping eMediplan](StructureDefinition-chmed-card-composition-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* [Examples](StructureDefinition-chmed-card-composition-examples.html)

#### Medication Card Section (CARD)
The medication card section contains the entries for the current medication of a patient. A medication consumed by a patient is recorded as MedicationStatement resource.
* [Profile](StructureDefinition-chmed-card-medicationstatement.html)
* [Mapping eMediplan](StructureDefinition-chmed-card-medicationstatement-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* [Examples](StructureDefinition-chmed-card-medicationstatement-examples.html)

#### Health Concerns Section (CARD)
The health concerns section contains the patient's medical data (Observation resources) and possible risks (Condition resources).   
* Profiles
   * [First day of last menstruation](StructureDefinition-chmed-obs-dateoflastmenstruation.html)
   * [Premature baby](StructureDefinition-chmed-obs-prematurebaby.html)
   * [Time of gestation](StructureDefinition-chmed-obs-timeofgestation.html)
   * [Risks](StructureDefinition-chmed-condition-risks.html)
   * [Body weight](StructureDefinition-chmed-obs-bodyweight.html)
   * [Body height](StructureDefinition-chmed-obs-bodyheight.html)
* [Mapping eMediplan](StructureDefinition-chmed-card-medicationstatement-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* Examples
   * [First day of last menstruation](StructureDefinition-chmed-obs-dateoflastmenstruation-examples.html)
   * [Premature baby](StructureDefinition-chmed-obs-prematurebaby-examples.html)
   * [Time of gestation](StructureDefinition-chmed-obs-timeofgestation-examples.html)
   * [Risks](StructureDefinition-chmed-condition-risks-examples.html)

*If the [risk category](ValueSet-chmed-valueset-risks-category.html) is specified without any [risk](ValueSet-chmed-valueset-risks-cdscode.html) specified in the code, the entire risk category is considered as explicitly excluded for the current patient. If the risk category does not exist, the risks are considered as unknown for the patient.*

#### Annotation Section (CARD)
The annotation section can be used to provide comments that cannot be declared in any of the other sections in the document. The comments are provided as [narrative](http://hl7.org/fhir/R4/narrative.html#Narrative).

#### Original Representation Section (CARD)
In this section, according to the [Swiss exchange format](http://fhir.ch/ig/ch-emed/medication-card-document.html), the original representation of the Medication Card document shall be embedded as a PDF in PDF/A-1 or PDF/A-2 format. The PDF is represented by a [Binary](http://hl7.org/fhir/R4/binary.html) resource (base64 encoded). 



### Medication Prescription document
The Medication Prescription document describes the content and format of a **prescription document** generated during the process in which a health care professional decides that the patient needs medication (ONE or MORE).

#### Bundle (PRE)
The Bundle resource defines the Medication Prescription document and its content, which are contained as entries.
* [Profile](StructureDefinition-chmed-pre-bundle.html)
* [Mapping eMediplan](StructureDefinition-chmed-pre-bundle-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* [Examples](StructureDefinition-chmed-pre-bundle-examples.html)

#### Composition (PRE)
The Composition resource defines the healthcare-related information that is assembled together into a single Medication Prescription document. The Composition resource provides the basic structure of a FHIR document.
* [Profile](StructureDefinition-chmed-pre-composition.html)
* [Mapping eMediplan](StructureDefinition-chmed-pre-composition-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* [Examples](StructureDefinition-chmed-pre-composition-examples.html)

#### Medication Prescription Section (PRE)
The medication prescription section contains the entries for the prescriped medications of a patient. An order or request of the medication to a patient is represented as MedicationRequest resource.
* [Profile](StructureDefinition-chmed-pre-medicationrequest.html) 
* [Mapping eMediplan](StructureDefinition-chmed-pre-medicationrequest-mappings.html#mappings-for-emediplan-https-emediplan-ch-wp-content-uploads-202)
* [Examples](StructureDefinition-chmed-pre-medicationrequest-examples.html)

#### Annotation Section (PRE)
The same as in Medication Card document, see description in the [annotation section above](#annotation-section-card).

#### Original Representation Section (PRE)
The same as in Medication Card document, see description in the [original representation section above](#original-representation-section-card).
