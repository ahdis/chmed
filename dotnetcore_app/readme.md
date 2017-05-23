# dotnetcore demo chmed16af

The dontnetcore_app is a sample start app to work with [CHMD16AF](http://chmed16af.emediplan.ch/) eMedication plan format.

following points are illustrated in the app:

- parsing a [CHMD16AF](http://chmed16af.emediplan.ch/) xml bundle with the [fhir-net-api for STU3](https://github.com/ewoutkramer/fhir-net-api)
- validating a [CHMED16AF](http://chmed16af.emediplan.ch/) bundle (note: there are some error validation messages)
- transform a fhir xml bundle to the shortend notation with [chmed16af_to_aq.xsl](chmed16aq/chmed16af_to_aq.xsl)
- transforms the shortend notation to a fhir bundle [chmed16aq_to_af.xsl](chmed16aq/chmed16aq_to_af.xsl) 
- serializes a bundle to JSON

XLST transforms are only suppoted in [dotnetcore 2](https://www.microsoft.com/net/core/preview), the [fhir-net-api for STU3](https://github.com/ewoutkramer/fhir-net-api) works also with [donetcore 1.0](https://www.microsoft.com/net/core#macos)


```
dotnet nuget Install-Package Hl7.Fhir.STU3
dotnet nuget Install-Package Hl7.Fhir.Specification.STU3
dotnet restore

dotnet run
Reading Bundle from: ../resources/Bundle/chmed16af-mp-bundle-s01.xml
---> Bundle id: chmed16af-mp-bundle-s01
---> Composition id: chmed16af-mp-composition-s01
---> Composition BaseUrl: http://test.fhir.org:80/r3/Composition/chmed16af-mp-composition-s01
---> Patient id: chmed16af-mp-patient-s01
---> MeciationStatmentID id: chmed16af-mp-medicationstatement-s01-1
---> MeciationStatmentID id: chmed16af-mp-medicationstatement-s01-2
---> MeciationStatmentID id: chmed16af-mp-medicationstatement-s01-3
---> MeciationStatmentID id: chmed16af-mp-medicationstatement-s01-4
```

see Program.cs for demo code.
