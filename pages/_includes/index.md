# Background

Medication plans are a central pillar of any eHealth solution. To enable interoperability between eHealth systems in Switzerland, 
the organization “[Verein eMediplan](http://emediplan.ch/de/home)” was founded in 2016. Its aim is to support and provide public, open source, medication plan 
formats supported by a broad group of stakeholders from the public and private sectors.

{% include img.html img="mediplan_example.png" caption="Example Mediplan" %}

# CHMED16A

CHMED16A describes the  proposed specification and reference implementation of the object model for a medication plan, the so called [CHMED16A](https://emediplan.ch/dbFile/305/u-ce40/dl/eMediplan_CHMED16A_V1.6.pdf).

The reference consists of two major parts:
* The content and layout specification for the electronic document, a string/textfile containing a header such as “CHMED16A1” and the (compressed, encoded) medication plan as a JSON object in UTF-8
* The content and layout specification for a paper-based layout used in Print/PDF scenarios

This allows IT systems to store and transmit electronic medication plans as simple strings or text files in UTF-8. It also makes it possible to transmit the mediplan print-based through the use of QR barcodes. Therefore, the mediplan is readable by users and systems alike. This is necessary to guarantee a simple handling.

A typical CHMED16A object (QR barcode) would look like this:

CHMED16A1H4sIAAAAAAAEAMVU3W7TMBR+lcq3S4SPHdtx7raVAaKFqutAAnoREreJ2jpT4gKj6ptxx4txnCwVSKQSu0GVqvPX7+fIpwdyuXcFSYiSFCjloGKtNQnI2G


GRUZAh1SGwBUASyYTqC8oSSnHgVe4HZM7z1UqF6WcqwkhxjCKdhcJkWc650GIlcXZq8sXDvSEJtHGZpTtjXUOSj4cORyuIpWpRu0EekFnVDYzxmwbtZ+l13dTV7g9t5Ij1eZVicfYWMRab9byxmF1urMH8zpbezO3iNTkGj4RRJIHH7Bwj/J2RhUAHGa+2e/fF1PnPH9bu7XqAnHEhZHzGrqeGJ5EXVVbk9T7bfHr20tTfBwRAxCQHen7f/y7guqi2pnGmLm1j7MbUA/Qx1VLz8/aftvvf7L9Pm2ZQAQgBTEX/QwL+dJa6Et8/SQ7kqr0z0DGEFPxbDsh16R48lqktZjdv8FYwnabfyl2KhRfG5giasIBMTj3nWp4JPrmEjJ93J+fxx5PGTY3X1tbSzuHpGDthCPUu3eKM4O2Kujbr29C3QcSd9ex0udibYyKUWvbLZX3Au54EdupFfSD6QD4CCBEIBcsjjpJZUVnv6yJCxlEsYMRk+59z62pj/MLuLBreoe2vZj2KsfOhvMcyp0yhAzLfbbzj4y8tzloh3gQAAA==

In addition, the layout specification for the print-based layouts makes recognition of and work with medication plans easier for medical professionals and patients, as the documents will come in a universal layout, independent of the individual IT systems. [Details](https://emediplan.ch/dbFile/305/u-ce40/dl/eMediplan_CHMED16A_V1.6.pdf)

# CHMED20AF

<mark>Disclaimer 31.03.2020: This is the current version (0.3.0) for FHIR Release 4.
Please contact info@emediplan.ch if you start implementing. There will be also a convertor from CHMED16A to CHMED20AF made availabe.</mark>

[FHIR](http://www.hl7.org/fhir) is a standard in development from [HL7](http://www.hl7.org/). FHIR consists of a RESTFul API and a set of interoperability Ressources. 

Extending the CHMED16A format to a FHIR based definition (CHMED20AF) has the following advantages:
* CHMED20AF formats can be [validated](http://build.fhir.org/validation.html) for correctness, data types are well defined 
* Base interoperabilty for other projects based on medications, e.g. mappings will be provided for the exchange formats for medication with the [EPR in Switzerland](http://e-health-wiki.ch/index.php/Ehscda:CDA-CH-EMED_(specification)).

The CHEMD20AF format can bei either in XML or JSON format. 

In the section [Introduction](intro.html) the structures for the different formats/values are explained.