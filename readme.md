# Implementation Guide for eMediplan based on HL7 FHIR R4

This github repository provides holds the source for the eMediplan CHMED20AF Implementation Guide, for the published version see 
[eMediplan CHMED20AF Implementation Guide: Home](http://chmed20af.emediplan.ch/).

The Implemenation Guide is based on FHIR. [FHIR](http://www.hl7.org/fhir) is a standard in development from [HL7](http://www.hl7.org/). FHIR consists of a RESTFul API and a set of interoperability Ressources. 

Extending the CHMED16A format to a FHIR based definition (CHMED20AF) has the following advantages:
* CHMED20AF formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-EMED_(specification)).

The CHEMD20AF format can bei either in XML or JSON format. However both are too big in size to be exchange in a qrcode. 


## Building the Implementation Guide

You can build the Implementation Guide with the [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

- For building the Implementation Guide you need to install [Jekyll](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation#IGPublisherDocumentation-Jekyll).

- Clone this repository and change into its main directory.
- Download the latest version of IG Publisher:
```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar -O org.hl7.fhir.publisher.jar
```
- Build the Implementation Guide:
```
java -Xms3550m -Xmx3550m -jar org.hl7.fhir.publisher.jar -ig ig.json
```

## Validate a Resource

You can check your example against the specification of the IG with the [Validator](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator).

- Download the latest version of Validator: 
```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.validator.jar -O org.hl7.fhir.validator.jar
```
- Validate the resource: 
```
java -jar org.hl7.fhir.validator.jar [filename]
 ```


## Validating without Building the IG

The validator can validate against an implementation guide.

- Download the latest version of Validator: 
```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.validator.jar -O org.hl7.fhir.validator.jar
```
- Validate the resource:
```
java -jar org.hl7.fhir.validator.jar [filename] -ig ch.chmed20af.emediplan#current
```
