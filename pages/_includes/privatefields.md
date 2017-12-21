# Private Fields

## Introduction

CHMED16A has the concept of Private Fields which can be added to Patient, Medication and Medicament.
The Private Fields can be represented in FHIR with [extensions](http://hl7.org/fhir/extensibility.html#Extension).


```xml
  <extension url="http://chmed16af.emediplan.ch/fhir/StructureDefinition/PrivateFieldName" >
    <valueString value="PrivateFieldValue" />
  </extension>
```

```json
"extension" : [
    {
      "url" : "http://chmed16af.emediplan.ch/fhir/StructureDefinition/PrivateField",
      "valueString" : "PrivateFieldValue"
    }
  ]
```

The name of the field can be indicated with the extension url, the value of the field in the value attribute. See sample for [patient](Patient-chmed16af-mp-patient-ext.html).

## Caveat

Currently in CHMED16AF their are no private fields explicitly defined. The conversion to the QR format considers extension definitions for Composition (equals to Medication in CHMED16A), Patient and MedicationStatement (equals to Medicament) with a canonical url starting with http://chmed16af.emediplan.ch/fhir/StructureDefinition/.

In the future official defined extensions will be published here.





