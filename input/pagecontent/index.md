### Background

Medication plans are a central pillar of any eHealth solution. To enable interoperability between eHealth systems in Switzerland, the organization [IG eMediplan](http://emediplan.ch/de/home) was founded in 2016. Its aim is to support and provide public, open source, medication plan formats supported by a broad group of stakeholders from the public and private sectors.

{% include img.html img="mediplan_example.png" caption="Fig.: Example of a Mediplan" %}

### About this IG and CHMED

#### CHMED
The purpose of this implementation guide is to specify the medication exchange formats based on the [FHIR®](https://www.hl7.org/fhir/) standard from [HL7®](https://www.hl7.org/).

Extending the eMediplan format to a FHIR based definition (CHMED) has the following advantages:
* CHMED formats can be [validated](https://www.hl7.org/fhir/validation.html) for correctness, data types are well defined. 
* Base interoperability for other projects based on medications, e.g. mappings will be provided for the exchange format for medication in the context of the EPR in Switzerland ([CH EMED](http://fhir.ch/ig/ch-emed/index.html)).

The CHMED format can be either in XML or JSON format. However, both are too big in size to be exchanged in a QR code.

HCI Solutions AG has built a **converter** for all software houses that have integrated the eMediplan format. If you have questions or want more information please contact <hotline@hcisolutions.ch> directly.

#### Scope
* [Documents](documents.html) - in FHIR format to exchange the eMedication information.
* [Profiles](profiles.html) - are constraints of FHIR resources and data types for the context of CHMED.
* [Extensions](extensions.html) - are FHIR extensions that are added to be able to represent the complete CHMED context.
* [Terminologies](terminology.html) - were defined and represented to allow exchange of coded data.
* [Dosage](dosage.html) - describes the posology of a medicament in more detail.
* [Artifacts](artifacts.html) - provides a list of the FHIR artifacts included in this implementation guide.

#### MustSupport
The meaning of the flag [mustSupport](https://www.hl7.org/fhir/profiling.html#mustsupport) for this implementation guide follows the [definition of CH EMED](https://fhir.ch/ig/ch-emed/index.html#mustsupport), the Swiss eMedication IG from which CHMED is derived.

#### Download
You can download this implementation guide in [NPM format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](package.tgz).

#### Change Log
[Significant changes](changelog.html) to this specification since its initial version.

### eMediplan
The [eMediplan papers](https://emediplan.ch/software-anbieter/spezifikationen/) describe the specification and reference implementation of the object model for a medication plan, the so-called CHMED16B/CHMED23A.

#### CHMED23A
The reference consists of:
* The content and layout specification for the electronic document, a JSON file including a medication (Med) for which the format (MedF) and compression (IsCompressed) is being specified.
   * Med will be a string if compressed or a JSON object otherwise
   * The JSON file must be encoded in UTF-8

The content and layout specification for a paper-based layout used in Print/PDF scenarios is described in the document 'eMediplan_Paper-based_Layout'.

This allows IT systems to store and transmit electronic medication plans as JSON file in UTF-8. It also makes it possible to transmit the mediplan print-based using QR barcodes. Therefore, the mediplan is readable by users and systems alike. This is necessary to guarantee a simple handling.

A typical compressed CHMED23A object would look like this:
```
{ 
    "MedF": "ChMed23A", 
    "IsCompressed": true, 
    "Med": 
    "H4sIAAAAAAAACq2OOw4CMQxE7zIt2ZUTAmzcLZsGiU+KUCEKYKlokIACRbk7jkLBAWisZz/NyAmb6/g
    AHxJWI7hsGgqhnsIOnBDBRmF4+9cebCuBtUL0Xy38g73MnIu+DxX/1nRUkCRiv1zLl9tzOF1uIloqxj9FGT
    KmId1oHcnxtGM7a+28c9YtJqSZCPkD+iD8fPQAAAA=" 
}
```
It is recommended to use the compressed CHMED23A object to minimize data size.


### IP Statements
This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}