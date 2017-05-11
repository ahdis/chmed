# QRCode

## Introduction
The Content for the QRCode is based on a shortened notation of FHIR and the resources / profiles defined there, such as Bundle, Composition, Patient, Observation and MedicationStatement with the applied Profiles for the Medication Plan, PolymedicationCheck or Prescription. It follows the pattern of the work of HL7 Germany - [Ultrakurzformat Patientenbezogener Medikationsplan](http://wiki.hl7.de/index.php?title=IG:Ultrakurzformat_Patientenbezogener_Medikationsplan).The QRCode can the be generated or interpreted according to the encoding/decoding rules.


```xml
 <?xml version="1.0" encoding="UTF-8"?>
<Bundle 
	xmlns="http://hl7.org/fhir">
    ...
	<meta>
         <versionId value="1.0"/> </span>
		<profile value="http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-bundle" />
	</meta>
    ...
	<type value="document"/>
	<entry>
		<fullUrl value="http://fhir3.healthintersections.com.au:80/open/Composition/chmed16af-mp-composition-s01"/>
		<resource>
			<Composition>
				<id value="chmed16af-mp-composition-s01"/>
				<meta>
					<profile value="http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition"/>
```

will be transposed to the shortened notation  

```xml
<B v="1.0" d="MP">
    <C i="chmed16af-mp-composition-s01" ...>

```

There is a schema for the shortend notation available, as well as XSL Transformation/ FHIR Path mappings to transform from a FHIR bundle to Shortened notation annd back.

## Shortened notation

The shortened notification is described for each parameter in the profiles [Profiles](profiles.html) tab. In contrast to ther german version the content of the datatypes is the same, there is no conversion.

## Transformations between shortened notation and FHIR Resources

TODO Provide XSL Templates, and XSD for shortend notification

## QR Code construction

The following instructions for the creation of XML document instances according to this specification are to be considered:

* As a symbol, only the symbol set ISO / IEC 8859-1 including all contents is prescribed for medication plans according to this specification.
* no unspecified characters according to ISO / IEC 8859-1 (eg newline, tab) may be included
* No XML prolog is specified. The XML prolog must be omitted when serializing.
* No namespaces are specified in the XML Roote element

## Complete example

Transform from fhir example
```xml
<?xml version="1.0" encoding="UTF-8"?>
<B 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:fhir="http://hl7.org/fhir" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:chmed16af="http://chemed16af.emediplan.ch" 
    xmlns:xhtml="http://www.w3.org/1999/xhtml" xsi:noNamespaceSchemaLocation="chmed16aq-mp.xsd" v="1.0" d="MP">
    <C i="26d3dff7-ab05-4737-a49c-5eccd33595f6" d="2016-09-12T11:46:09+02:00" at="2016-09-12T11:46:09+02:00" ap="7601003178999" n="Bemerkung">
        <A i="7601003178999" g="Thomas" f="Wälti"/>
        <P i="vekano" g="Maxima" f="Matter" t="+41588512600" ag="f" b="1981-01-12" l="Untermattweg 8" p="3027" c="Bern" cl="de-CH"/>
    </C>
    <M>
        <MS i="7680453070343" s="0" r="Akne" n="-">
            <D s="2016-09-12" e="2020-09-12" r="1" m="1" o="PO"/>
        </MS>
        <MS i="7680517950680" s="0" r="Blutverdünnung">
            <D s="2016-09-12" e="2020-09-12" m="1" o="PO"/>
        </MS>
        <MS i="7680521101573" s="0" r="Bluthochdruck/Herz">
            <D s="2016-02-10" m="1" v="1" o="PO"/>
        </MS>
        <MS i="7680497420456" s="0" r="Cholesterinsenker">
            <D s="2016-02-10" v="1" o="PO"/>
        </MS>
    </M>
    <H w="72" h="178" m="2016-09-01" p="1" tw="30" td="5" r1="577" r3="612" r4="" r5="" r6="555,571"/>
</B>
```