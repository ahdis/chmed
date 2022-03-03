### Extensions

CHMED21A has the concept of private fields which can be added to Patient, Medication and Medicament (furthers TBD).   
The private fields can be represented in FHIR with [extensions](http://hl7.org/fhir/extensibility.html#Extension) and
can be added to Patient, Composition (CHMED21A: Medication) and MedicationStatement (CHMED21A: Medicament).


```json
  "extension" : [
    {
      "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-private-field",
      "extension" : [
        {
          "url" : "name",
          "valueString" : "Private Field Name Sample"
        },
        {
          "url" : "value",
          "valueString" : "Private Field Value Sample"
        }
      ]
    }
  ]
```

The name of the field can be indicated with the **extension name** in attribute `valueString`, the value of the field with the **extension value** and attribute `valueString`. See sample for [Patient](Patient-card-patient-ext.html).


