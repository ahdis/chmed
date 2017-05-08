# Implementation Guide for eMediplan based on HL7 FHIR STU3

[FHIR](http://www.hl7.org/fhir) is a standard in development from [HL7](http://www.hl7.org/). FHIR consists of a RESTFul API and a set of interoperability Ressources. 

Extending the CHMED16A format to a FHIR based definition (CHMED16AF) has the following advantages:
* Support for [implementers](http://build.fhir.org/implsupport-module.html): .NET/Java and other implementations are availabe to work directly with FHIR Ressources, no separate Parser/Serializer has to be written
* CHMED16AF formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://www.e-health-suisse.ch/umsetzung/00252/index.html?lang=de).

The CHEMD16AF format can bei either in XML or JSON format. However both are too big in size to be exchange in a qrcode. For this a shortened notation [CHMED16AQ](qrcode.html) has be developed similar to the work of HL7 Germany - [Ultrakurzformat Patientenbezogener Medikationsplan](http://wiki.hl7.de/index.php?title=IG:Ultrakurzformat_Patientenbezogener_Medikationsplan)


#source

Publishing of the Implementation for eMediplan is currrencly a manual process

```
cd output
ncftpput -R -f ../ncftp.cfg / ./
```