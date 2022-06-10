# Implementation Guide for eMediplan based on HL7 FHIR R4

This github repository provides holds the source for the **eMediplan CHMED Implementation Guide**, for the published version see 
[eMediplan CHMED Implementation Guide: Home](http://chmed.emediplan.ch/).

The implemenation guide is based on FHIR. [FHIR](http://www.hl7.org/fhir) is a standard in development from [HL7](http://www.hl7.org/). FHIR consists of a RESTFul API and a set of interoperability resources. 

Extending the CHMED23A format to a FHIR based definition (CHMED) has the following advantages:
* CHMED formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined. 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-EMED_(specification)).

The CHMED format can be either in XML or JSON format. However, both are too big in size to be exchanged in a QR code. 
