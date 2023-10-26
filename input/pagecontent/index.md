### Background

Medication plans are a central pillar of any eHealth solution. To enable interoperability between eHealth systems in Switzerland, the organisation [IG eMediplan](https://emediplan.ch/) was founded in 2016. Its aim is to support and provide public, open-source, medication plan formats used by a broad group of stakeholders from the public and private sectors.

{% include img.html img="mediplan_example.jpg" caption="Fig. 1: eMediplan example (see also Use Case 1)" %}

### eMedication Plan ChMed23A
The [eMedication Plan ChMed23A](https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf) describes the specification and reference implementation of the object model for a medication plan, the so-called ChMed23A.

The reference consists of the content and layout specification for the electronic document, a JSON file containing a medication.

The content and layout specification for a paper-based layout used in Print/PDF scenarios is described in the document 'eMediplan_Paper-based_Layout'.

A ChMed23A can be transmitted using the so called ChTransmissionFormat, which specifies the type of the content and includes the compressed and Base64 encoded content.

ChFormat: <span style="color:blue;">{inputType}</span>.<span style="color:lightgreen;">{compressed-base64-payload}</span>     
Example: <span style="color:blue;">ChMed23A</span>.    
<span style="color:lightgreen;">H4sIAAAAAAAACq2OOw4CMQxE7zIt2ZUTAmzcLZsGiU+KUCEKYKlokIACRbk7jkLBAWisZz/NyAmb6/gAHxJ</span>      
<span style="color:lightgreen;">WI7hsGgqhnsIOnBDBRmF4+9cebCuBtUL0Xy38g73MnIu+DxX/1nRUkCRiv1zLl9tzOF1uIloqxj9FGTKmId1oHcn</span>      
<span style="color:lightgreen;">xtGM7a+28c9YtJqSZCPkD+iD8fPQAAAA=</span>      

This allows IT systems to store and transmit electronic medication plans in the form of a JSON file in UTF-8. It also enables the medication plan to be transmitted in a print-based form by using QR barcodes. Therefore, the medication plan is readable by users and systems alike. This is necessary to guarantee simple handling.

The possibility to transmit and store the compressed and Base64 encoded chunked payload (mainly to not exceed the maximum character size supported by a QR code), will be considered in the future.   
Here is an example which describes how to create chunks that fit on one line in this document:   
Chunk 1: ChMed23A.1/4.H4sIAAAAAAAACq2OOw4CMQxE7zIt2ZUTAmzcLZsGiU+KUCEKYKlokIACRbk7jk   
Chunk 2: ChMed23A.2/4.LBAWisZz/NyAmb6/gAHxJWI7hsGgqhnsIOnBDBRmF4+9cebCuBtUL0Xy38g73MnI   
Chunk 3: ChMed23A.3/4.u+DxX/1nRUkCRiv1zLl9tzOF1uIloqxj9FGTKmId1oHcnxtGM7a+28c9YtJqSZCPkD+   
Chunk 4: ChMed23A.4/4.iD8fPQAAAA=   

### CHMED Implementation Guide

#### eMediplan on FHIR
The purpose of this implementation guide (IG) is to specify the medication exchange formats given by eMediplan based on the [FHIR® (R4)](http://hl7.org/fhir/R4/index.html) standard from [HL7®](https://www.hl7.org/).

Extending the eMediplan format to a FHIR-based definition (CHMED) has the following advantages:
* CHMED formats can be [validated](https://www.hl7.org/fhir/validation.html) for correctness and data types are well defined. 
* It provides the foundation for base interoperability for other medication projects. For example CHMED depends on [CH EMED](http://fhir.ch/ig/ch-emed/index.html), the medication exchange format in the context of the EPR in Switzerland.

The CHMED format can be either in JSON or XML format. However, both formats are too large in size to be exchanged in a QR code as defined by eMediplan.   

HCI Solutions AG has built a **converter** for all software houses that have integrated the eMediplan format. It transforms the eMediplan format to the CHMED format and back. If you have any questions or require further information, please contact <hotline@hcisolutions.ch>.

{% include img.html img="formats.png" caption="Fig. 2: Format overview" width="100%" %}

#### MustSupport
The meaning of the flag [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) for this implementation guide follows the [definition of CH EMED](https://fhir.ch/ig/ch-emed/index.html#mustsupport), the Swiss eMedication IG from which CHMED is derived.

#### Download
You can download this implementation guide in [npm format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

#### Changelog
[Significant changes](changelog.html) to this specification since its initial version.

#### IP Statements

{% include ip-statements.xhtml %}

#### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

#### Dependency Table

{% include dependency-table.xhtml %}

#### Globals Table

{% include globals-table.xhtml %}