# Background

Medication plans are a central pillar of any eHealth solution. To enable interoperability between eHealth systems in Switzerland, 
the organization “[Verein eMediplan](http://emediplan.ch/de/home)” was founded in 2016. Its aim is to support and provide public, open source, medication plan 
formats supported by a broad group of stakeholders from the public and private sectors.

{% include img.html img="mediplan_example.png" caption="Example Mediplan" %}

# CHMED16A

CHMED16A describes the  proposed specification and reference implementation of the object model for a medication plan, the so called [CHMED16A](http://emediplan.ch/dbFile/242/a19b/dl/eMediplan_CHMED16A_V1.4.pdf).

The reference consists of two major parts:
* The content and layout specification for the electronic document, a string / textfile containing a header such as “CHMED16A1” and the (compressed, encoded) medication plan as a JSON object in UTF-8
* The content and layout specification for a paper-based layout used in Print/PDF scenarios

This allows IT systems to store and transmit electronic medication plans as simple strings or text files in UTF-8. It also makes it possible to transmit the mediplan print-based through the use of QR barcodes. Therefore,the mediplan is readable by users and systems alike.This is necessary to guarantee a simple handling.

A typical CHMED16A object would look like this:

CHMED16A1H4sIAAAAAAAEAMVU3W7TMBR+lcq3S4SPHdtx7raVAaKFqutAAnoREreJ2jpT4gKj6ptxx4txnCwVSKQSu0GVqvPX7+fIpwdyuXcFSYiSFCjloGKtNQnI2GGRUZAh1SGwBUASyYTqC8oSSnHgVe4HZM7z1UqF6WcqwkhxjCKdhcJkWc650GIlcXZq8sXDvSEJtHGZpTtjXUOSj4cORyuIpWpRu0EekFnVDYzxmwbtZ+l13dTV7g9t5Ij1eZVicfYWMRab9byxmF1urMH8zpbezO3iNTkGj4RRJIHH7Bwj/J2RhUAHGa+2e/fF1PnPH9bu7XqAnHEhZHzGrqeGJ5EXVVbk9T7bfHr20tTfBwRAxCQHen7f/y7guqi2pnGmLm1j7MbUA/Qx1VLz8/aftvvf7L9Pm2ZQAQgBTEX/QwL+dJa6Et8/SQ7kqr0z0DGEFPxbDsh16R48lqktZjdv8FYwnabfyl2KhRfG5giasIBMTj3nWp4JPrmEjJ93J+fxx5PGTY3X1tbSzuHpGDthCPUu3eKM4O2Kujbr29C3QcSd9ex0udibYyKUWvbLZX3Au54EdupFfSD6QD4CCBEIBcsjjpJZUVnv6yJCxlEsYMRk+59z62pj/MLuLBreoe2vZj2KsfOhvMcyp0yhAzLfbbzj4y8tzloh3gQAAA==

In addition, the layout specification for the print-based layouts makes recognition of and work with medication plans easier for medical professionals and patients, as the documents will come in a universal layout, independent of the individual IT systems. [Details](http://emediplan.ch/dbFile/242/a19b/dl/eMediplan_CHMED16A_V1.4.pdf)

# CHMED16AF

[FHIR](http://www.hl7.org/fhir) is a standard in development from [HL7](http://www.hl7.org/). FHIR consists of a RESTFul API and a set of interoperability Ressources. 

Extending the CHMED16A format to a FHIR based definition (CHMED16AF) has the following advantages:
* Support for [implementers](http://build.fhir.org/implsupport-module.html): .NET/Java and other implementations are availabe to work directly with FHIR Ressources, no separate Parser/Serializer has to be written
* CHMED16AF formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://www.e-health-suisse.ch/umsetzung/00252/index.html?lang=de).

The CHEMD16AF format can bei either in XML or JSON format. However both are too big in size to be exchange in a qrcode. For this a shortened notation [CHMED16AQ](qrcode.html) has be developed similar to the work of HL7 Germany - [Ultrakurzformat Patientenbezogener Medikationsplan](http://wiki.hl7.de/index.php?title=IG:Ultrakurzformat_Patientenbezogener_Medikationsplan)

In the section [Profiles](profiles.html) the structure for the different formats/values are explained.
