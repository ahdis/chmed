# Private Fields

## Introduction

CHMED16A has the concept of Private Fields which can be added to Patient, Medication and Medicament.
The Private Fiels can be represented in FHIR with [extensions](http://hl7.org/fhir/extensibility.html#Extension).


```xml
  <extension url="http://chmed16af.emediplan.ch/fhir/StructureDefinition/PrivateFieldName" >
    <value[x] value="PrivateFieldValue" />
  </extension>
```

```json
"extension" : [
    {
      "url" : "http://chmed16af.emediplan.ch/fhir/StructureDefinition/PrivateField",
      "value[x]" : "PrivateFieldValue"
    }
  ]
```

The name of the field can be indicated with the extension url, the value of the field in the value attribute. In addition
the type of the field can be specified (replace [x] with the type), see sample for [patient](Patient-chmed16af-mp-patient-ext.html).

## Caveat

Currently in CHMED16AF their are no private fields explicitly defined and the conversion to the barcode does not encode the Private Fields. In the future official defined files will be published here.





