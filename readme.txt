Problems with slicing/validator:

Requiring an specific extensions as well as two sections in a Composition: 

Example: https://github.com/ahdis/chmed16af/blob/master/resources/Composition/chmed16af-mp-composition-s01.xml
Profile: https://github.com/ahdis/chmed16af/blob/master/resources/StructureDefinition/chmed16af-mp-composition.xml

```
  Error @ Composition.extension (line 8, col93) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition, Element matches more than one slice
  Error @ Composition.section[1] (line 40, col11) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition, Element matches more than one slice
  Error @ Composition.section[2] (line 62, col11) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition, Element matches more than one slice
  Error @ Composition.section[3] (line 102, col11) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition, Element matches more than one slice
  Error @ Composition (line 1, col42) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition, Element 'Composition.section[sectionmed]': minimum required = 1, but only found 0
  Error @ Composition (line 1, col42) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-mp-composition, Element 'Composition.section[sectionnote]': minimum required = 1, but only found 0
```

I tried a simliar setup following the BP profile from http://build.fhir.org/bp.profile.xml.html for time of gestation with two coded entries in components:

Example: https://github.com/ahdis/chmed16af/blob/master/resources/StructureDefinition/chmed16af-obs-timeofgestation.xml
Profile: https://github.com/ahdis/chmed16af/blob/master/resources/Observation/chmed16af-observation-s01-timeofgestation.xml

But I get also similar errors:
```
  Error @ Observation.code.coding (line 15, col17) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-obs-timeofgestation, Element matches more than one slice
  Error @ Observation.component[1] (line 24, col16) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-obs-timeofgestation, Element matches more than one slice
  Error @ Observation.component[2] (line 39, col16) : Profile http://emediplan.ch/fhir/chmed16af/StructureDefinition/chmed16af-obs-timeofgestation, Element matches more than one slice
```
So thats why I first thought its a problem with the validator after Llyod Message. But if you have any idea why my profiles are not working I would be glad to try alternate approaches.


