### Background

Medication plans are a central pillar of any eHealth solution. To enable interoperability between eHealth systems in Switzerland, the organization [IG eMediplan](http://emediplan.ch/de/home) was founded in 2016. Its aim is to support and provide public, open source, medication plan formats supported by a broad group of stakeholders from the public and private sectors.

{% include img.html img="mediplan_example.png" caption="Fig.: Example of a Mediplan" %}

### About this IG and CHMED

#### CHMED
The purpose of this implementation guide is to specify the medication plan exchange formats based on the [FHIR®](https://www.hl7.org/fhir/) standard from [HL7®](https://www.hl7.org/).

Extending the CHMED16A/CHMED23A format to a FHIR based definition (CHMED) has the following advantages:
* CHMED formats can be [validated](https://www.hl7.org/fhir/validation.html) for correctness, data types are well defined. 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-EMED_(specification)).

The CHMED format can be either in XML or JSON format. However, both are too big in size to be exchanged in a QR code.

HCI Solutions AG has built a **converter** for all software houses that have integrated the CHMED16A/CHMED23A. If you have questions or want more information please contact <hotline@hcisolutions.ch> directly.

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

### eMedication Plan
The [eMedication Plan CHMED16A](https://emediplan.ch/wp-content/uploads/2022/04/eMediplan_CHMED16A_V1.6.pdf) and 'eMedication Plan CHMED23A' papers describe the specification and reference implementation of the object model for a medication plan, the so-called CHMED16A and CHMED23A, respectively.

#### CHMED16A
The reference consists of two major parts:
* The content and layout specification for the electronic document, a string / text file containing a header such as 'CHMED16A1' and the (compressed, encoded) medication plan as a JSON object in UTF-8
* The content and layout specification for a paper-based layout used in Print/PDF scenarios

This allows IT systems to store and transmit electronic medication plans as simple strings or text files in UTF-8. It also makes it possible to transmit the mediplan print-based through the use of QR barcodes. Therefore, the mediplan is readable by users and systems alike. This is necessary to guarantee a simple handling.

A typical CHMED16A object would look like this:
```
CHMED16A1H4sIAAAAAAAEAMVU3W7TMBR+lcq3S4SPHdtx7raVAaKFqutAAnoREreJ2jpT4gKj6ptxx4txnCwVSKQSu0GVqvPX7+fIpwdyuXcFSYiSFCjloGKtNQnI2GGRUZAh1SGwBUASyYTqC8oSSnHgVe4HZM7z1UqF6WcqwkhxjCKdhcJkWc650GIlcXZq8sXDvSEJtHGZpTtjXUOSj4cORyuIpWpRu0EekFnVDYzxmwbtZ+l13dTV7g9t5Ij1eZVicfYWMRab9byxmF1urMH8zpbezO3iNTkGj4RRJIHH7Bwj/J2RhUAHGa+2e/fF1PnPH9bu7XqAnHEhZHzGrqeGJ5EXVVbk9T7bfHr20tTfBwRAxCQHen7f/y7guqi2pnGmLm1j7MbUA/Qx1VLz8/aftvvf7L9Pm2ZQAQgBTEX/QwL+dJa6Et8/SQ7kqr0z0DGEFPxbDsh16R48lqktZjdv8FYwnabfyl2KhRfG5giasIBMTj3nWp4JPrmEjJ93J+fxx5PGTY3X1tbSzuHpGDthCPUu3eKM4O2Kujbr29C3QcSd9ex0udibYyKUWvbLZX3Au54EdupFfSD6QD4CCBEIBcsjjpJZUVnv6yJCxlEsYMRk+59z62pj/MLuLBreoe2vZj2KsfOhvMcyp0yhAzLfbbzj4y8tzloh3gQAAA==
```

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