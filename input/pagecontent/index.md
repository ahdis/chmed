### Background

Medication plans are a central pillar of any eHealth solution. To enable interoperability between eHealth systems in Switzerland, the organization ['IG eMediplan'](http://emediplan.ch/de/home) was founded in 2016. Its aim is to support and provide public, open source, medication plan formats supported by a broad group of stakeholders from the public and private sectors.

{% include img.html img="mediplan_example.png" caption="Fig.: Example of a Mediplan" %}

### About this IG and CHMED

#### CHMED
The purpose of this implementation guide is to specify the medication plan exchange formats based on the [FHIR®](https://www.hl7.org/fhir/) standard from [HL7®](https://www.hl7.org/).

Extending the CHMED23A format to a FHIR based definition (CHMED) has the following advantages:
* CHMED formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined. 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-EMED_(specification)).

The CHEMD format can be either in XML or JSON format. However, both are too big in size to be exchanged in a QR code.

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

### CHMED23A
The 'eMedication Plan CHMED23A' paper describes the specification and reference implementation of the object model for a medication plan, the so-called CHMED23A.

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

### Copyright
This implementation guide includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation ([IHTSDO](http://snomed.org/)) and distributed by agreement between IHTSDO and HL7. Implementers of these specification must have the appropriate SNOMED CT Affiliate license - for more information contact 
<https://www.snomed.org/snomed-ct/getsnomed> or <info@snomed.org>.

This implementation guide contains content from LOINC® (<http://loinc.org>). The LOINC table, LOINC codes, and LOINC panels and forms file are copyright © 1995-2014, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and available at no cost under the license at <http://loinc.org/terms-of-use> .
