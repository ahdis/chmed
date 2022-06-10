CHMED23A and CHMED (FHIR version) define two different exchange formats:
1. [Medication Card document](#medication-card-document) (CHMED23A: MedicationPlan (MP))
2. [Medication Prescription document](#medication-prescription-document) (CHMED23A: Prescription (Rx))

These exchange formats are defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A Bundle has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="documents.png" caption="Fig.: Schematic illustration of the FHIR documents for the exchange formats " width="70%" %}

### Medication Card document
The Medication Card document describes the **current medication** of a patient, medications (MORE) that have been, is or will be taken by the patient.

#### Bundle (Card)
The Bundle resource defines the Medication Card document and its content, which are contained as entries.
* [Profile](StructureDefinition-chmed-card-bundle.html)
* [Mapping to CHMED23A](StructureDefinition-chmed-card-bundle-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* [Examples](StructureDefinition-chmed-card-bundle-examples.html)

#### Composition (Card)
The Composition resource defines the healthcare-related information that is assembled together into a single Medication Card document. The Composition resource provides the basic structure of a FHIR document.
* [Profile](StructureDefinition-chmed-card-composition.html)
* [Mapping to CHMED23A](StructureDefinition-chmed-card-composition-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* [Examples](StructureDefinition-chmed-card-composition-examples.html)

#### Medication Card Section (Card)
The medication card section contains the entries for the current medication of a patient. A medication consumed by a patient is recorded as MedicationStatement resource.
* [Profile](StructureDefinition-chmed-card-medicationstatement.html)
* [Mapping to CHMED23A](StructureDefinition-chmed-card-medicationstatement-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* [Examples](StructureDefinition-chmed-card-medicationstatement-examples.html)

#### Health Concerns Section (Card)
The health concerns section contains the patient's medical data (Observation resources) and possible risks (Condition resources).   
* Profiles
   * [Body weight](StructureDefinition-chmed-obs-bodyweight.html)
   * [Body height](StructureDefinition-chmed-obs-bodyheight.html)
   * [First day of last menstruation](StructureDefinition-chmed-obs-dateoflastmenstruation.html)
   * [Premature baby](StructureDefinition-chmed-obs-prematurebaby.html)
   * [Time of gestation](StructureDefinition-chmed-obs-timeofgestation.html)
   * [Risks](StructureDefinition-chmed-condition-risks.html)
* [Mapping to CHMED23A](StructureDefinition-chmed-card-composition-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* Examples
   * [First day of last menstruation](StructureDefinition-chmed-obs-dateoflastmenstruation-examples.html)
   * [Premature baby](StructureDefinition-chmed-obs-prematurebaby-examples.html)
   * [Time of gestation](StructureDefinition-chmed-obs-timeofgestation-examples.html)
   * [Risks](StructureDefinition-chmed-condition-risks-examples.html)

*If the [risk category](ValueSet-chmed-valueset-risks-category.html) is specified without any [risk](ValueSet-chmed-valueset-risks-cdscode.html) specified in the code, the entire risk category is considered as explicitly excluded for the current patient. If the risk category does not exist, the risks are considered as unknown for the patient.*

#### Annotation Section (Card)
The annotation section can be used to provide comments that cannot be declared in any of the other sections in the document. The comments are provided as [narrative](http://hl7.org/fhir/R4/narrative.html#Narrative).

#### Original Representation Section (Card)
In this section, according to the [Swiss exchange format](http://fhir.ch/ig/ch-emed/medication-card-document.html), the original representation of the Medication Card document shall be embedded as a PDF in PDF/A-1 or PDF/A-2 format. The PDF is represented by a [Binary](http://hl7.org/fhir/R4/binary.html) resource (base64 encoded). 



### Medication Prescription document
The Medication Prescription document describes the content and format of a prescription document generated during the process in which a health care professional decides that the **patient needs medication** (ONE or MORE).

#### Bundle (Pre)
The Bundle resource defines the Medication Prescription document and its content, which are contained as entries.
* [Profile](StructureDefinition-chmed-pre-bundle.html)
* [Mapping to CHMED23A](StructureDefinition-chmed-pre-bundle-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* [Examples](StructureDefinition-chmed-pre-bundle-examples.html)

#### Composition (Pre)
The Composition resource defines the healthcare-related information that is assembled together into a single Medication Prescription document. The Composition resource provides the basic structure of a FHIR document.
* [Profile](StructureDefinition-chmed-pre-composition.html)
* [Mapping to CHMED23A](StructureDefinition-chmed-pre-composition-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* [Examples](StructureDefinition-chmed-pre-composition-examples.html)

#### Medication Prescription Section (Pre)
The medication prescription section contains the entries for the prescriped medications of a patient. An order or request of the medication to a patient is represented as MedicationRequest resource.
* [Profile](StructureDefinition-chmed-pre-medicationrequest.html) 
* [Mapping to CHMED23A](StructureDefinition-chmed-pre-medicationrequest-mappings.html#mappings-for-chmed23a-http-emediplan-ch-chmed23a)
* [Examples](StructureDefinition-chmed-pre-medicationrequest-examples.html)

#### Annotation Section (Pre)
The same as in Medication Card document, see description in the [annotation section above](#annotation-section-card).

#### Original Representation Section (Pre)
The same as in Medication Card document, see description in the [original representation section above](#original-representation-section-card).