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

## Shortened notation

There is a schema for the shortend notation available [chmed16aq.xsd](chmed16aq/chmed16aq.xsd), as well as XSL Transformation to transform from a FHIR bundle to Shortened notation annd back. The shortened notification is described for each parameter in the profiles [Profiles](profiles.html) tab. In contrast to the german version the datatypes are the same, there is no conversion.

## Transformations between shortened notation and FHIR Resources

[chmed16af_to_aq.xsl](chmed16aq/chmed16af_to_aq.xsl) transforms a fhir xml bundle to the shortend notation
[chmed16aq_to_af.xsl](chmed16aq/chmed16aq_to_af.xsl) transforms the shortend notation to a fhir bundle

Note: The current transformations work for the medication plan with simplified dosages (eg. 1-1-0-0), complex taking times as well as prescription, polymedicationcheck will be supported in a future update.

## QR Code construction

The following instructions for the creation of XML document instances according to this specification are to be considered:

* As a symbol, only the symbol set ISO / IEC 8859-1 including all contents is prescribed for medication plans according to this specification.
* no unspecified characters according to ISO / IEC 8859-1 (eg newline, tab) may be included
* No XML prolog is specified. The XML prolog must be omitted when serializing.
* No namespaces are specified in the XML Roote element

## Complete example

Transform from fhir example with stripped namespage
```xml
<?xml version="1.0" encoding="UTF-8"?>
<B v="1.0" d="MP">
    <C i="26d3dff7-ab05-4737-a49c-5eccd33595f6" d="2016-09-12T11:46:09+02:00" at="2016-09-12T11:46:09+02:00" ap="7601003178999" n="Bemerkung" r="7601003178999">
        <A i="7601003178999" g="Thomas" f="Wälti"/>
        <P i="vekano" g="Maxima" f="Matter" t="+41588512600" ag="f" b="1981-01-12" l="Untermattweg 8" p="3027" c="Bern" cl="de-CH">
            <E n="PrivateFieldNameSample2" v="PrivateFieldValueSample2"/>
        </P>
        <E n="PrivateFieldNameSample1" v="PrivateFieldValueSample1"/>
    </C>
    <M>
        <MS i="7680453070343" s="0" r="Akne" n="-">
            <D s="2016-09-12" e="2020-09-12" w="PCM" r="1" q="1" u="Stk" o="PO"/>
            <E n="PrivateFieldNameSample3" v="PrivateFieldValueSample3"/>
        </MS>
        <MS i="7680517950680" s="0" r="Blutverdünnung">
            <D s="2016-09-12" e="2020-09-12" dw="mon,tue" w="PCM" q="1" u="Stk" o="PO"/>
        </MS>
        <MS i="7680521101573" s="0" r="Bluthochdruck/Herz">
            <D s="2016-02-10" w="PCM,PCV" q="1" u="Stk" o="PO"/>
        </MS>
        <MS i="7680497420456" s="0" r="Cholesterinsenker">
            <D n="1" c="1" dv="3600" du="s" td="08:00:00" q="10" u="ml" o="IV"/>
            <D n="2" s="2017-09-05" e="2020-09-26" dv="1800" du="s" f="3" p="1" pu="wk" dw="tue" td="08:00:00,12:00:00,18:00:00" q="2" u="g" o="IV"/>
            <D n="3" s="2016-02-10" w="PCM,PCV" q="1" u="Stk" o="PO"/>
            <D n="4" s="2016-02-10" w="PCM,PCV" q="1" u="Stk" o="PO"/>        
        </MS>
        <MS i="7680565130034" s="0" r="Schmerzen">
            <D n="1" c="1" dv="14400" du="s" td="08:00:00" q="50" u="ml" q2="200" u2="ml" o="IV" />
        </MS>
    </M>
    <H w="72" h="178" m="2016-09-01" p="1" tw="30" td="5" r1="577" r3="612" r4="" r5="" r6="555,571"/>
</B>
```

## Example source
The [dontnetcore_app](https://github.com/ahdis/chmed16af/tree/master/dotnetcore_app) is a sample start app to work with [CHMD16AF](http://chmed16af.emediplan.ch/) eMedication plan format.

