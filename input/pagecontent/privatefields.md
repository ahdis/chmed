### Extensions

CHMED16A has the concept of private fields which can be added to Patient, Medication and Medicament.   
The private fields can be represented in FHIR with [extensions](http://hl7.org/fhir/extensibility.html#Extension) and
can be added to Patient, Composition (CHMED16A: Medication) and MedicationStatement (CHMED16A: Medicament).


```json
  "extension" : [
    {
      "url" : "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-privatefield",
      "extension" : [
        {
          "url" : "name",
          "valueString" : "PrivateFieldNameSample"
        },
        {
          "url" : "value",
          "valueString" : "PrivateFieldValueSample"
        }
      ]
    }
  ]
```

The name of the field can be indicated with the **extension name** in attribute `valueString`, the value of the field with the **extension value** and attribute `valueString`. See sample for [Patient](Patient-chmed20af-card-patient-ext.html).

### Caveat

Currently in CHMED20AF their are no private fields explicitly defined. The conversion to the QR format considers extension definitions for Composition (equals to Medication in CHMED16A), Patient and MedicationStatement (equals to Medicament in CHMED16A) with a canonical url starting with `http://chmed20af.emediplan.ch/fhir/StructureDefinition/`.

In the future official defined extensions will be published here.





