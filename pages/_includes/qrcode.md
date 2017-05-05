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
<MP v="1.0">
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
<MP v="1.0">
    <C i="" c="" at="" ap="" n="" r="">
        <A i="" z="" />
        <P i="" g="" f="" t="" ag="" b="" l="" p="" c="" cl="" />
    </C>    
    <M>
        <MS i="" s="" r="" n="">    
            <d s="" e="" p="" r="" m="" d="" v="" h="" o="" dl="" dh="" dm="" />
        </MS>    
    </M>
    <H w="" h="" m="" p="" tw="" td="" r1="" r2="" r3="" r5="" r6="" />
</MP>
```