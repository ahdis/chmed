# Implementation Guide for eMediplan based on HL7 FHIR R4

This github repository provides holds the source for the eMediplan CHMED20AF Implementation Guide, for the published version see 
[eMediplan CHMED20AF Implementation Guide: Home](http://chmed20af.emediplan.ch/).

The Implemenation Guide is based on FHIR. [FHIR](http://www.hl7.org/fhir) is a standard in development from [HL7](http://www.hl7.org/). FHIR consists of a RESTFul API and a set of interoperability Ressources. 

Extending the CHMED16A format to a FHIR based definition (CHMED20AF) has the following advantages:
* CHMED20AF formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-EMED_(specification)).

The CHEMD20AF format can bei either in XML or JSON format. However both are too big in size to be exchange in a qrcode. 


## Building the Implementation Guide

You can build the Implementation Guide with the [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation)

```
wget https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar -O org.hl7.fhir.publisher.jar
java -Xms3550m -Xmx3550m -jar org.hl7.fhir.publisher.jar -ig ig.ini
```


## Validating without publishing
There is an alternative mode, where you run the IG publisher against a collection of conformance resources (profiles, value sets etc) without publishing an implementation guide. This allows you to validate a set of profiles, and see what they look like. To run the IG publisher in this mode:

```
java -jar org.hl7.fhir.publisher.jar -source [source] -destination [dest] (-tx [url])
```

Where source is a directory containing the conformance resources, destination is where to put the generated output (validation.html is the most important). In this case, the IG publisher uses its own internal control file and renders a simple version of the output.