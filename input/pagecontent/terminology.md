### Terminology for Risks
The codes for risks are defined in the specification 'eMedication Plan CHMED'.
* ValueSet [CHMED Risk Categories](ValueSet-chmed-valueset-risks-category.html)
   * includes all codes defined in CodeSystem [CHMED Risk Categories](CodeSystem-chmed-codesystem-risks-category.html) 
   * binded to element Condition.category of [CHMED Risks](StructureDefinition-chmed-condition-risks.html)
   * source: [CDSCODE](https://index.hcisolutions.ch/DataDoc/element/cdscode) in INDEX database by HCI Solutions AG
* ValueSet [CHMED Risks](ValueSet-chmed-valueset-risks-cdscode.html)
   * includes all codes defined in CodeSystem [CHMED Risks](CodeSystem-chmed-codesystem-risks-cdscode.html)
   * binded to element Condition.code of [CHMED Risks](StructureDefinition-chmed-condition-risks.html)
* ConceptMap [RiskCategories-to-Risks](ConceptMap-RiskCategories-to-Risks.html) to describe the relationship between risk categories and risks


### Terminology for Medicament
The codes for medicament are defined in the specification 'eMedication Plan CHMED'.
* CH EMED ValueSet [UnitCode](http://fhir.ch/ig/ch-emed/ValueSet/UnitCode)
   * includes codes from CodeSystem [`http://snomed.info/sct`](http://www.snomed.org/) and [`http://unitsofmeasure.org`](http://unitsofmeasure.org/)
   * binded to data type [CH EMED Quantity with units](http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-quantity)
   * ConceptMap [CHEMEDUnitCode-to-CDTYP9](ConceptMap-CHEMEDUnitCode-to-CDTYP9.html) to describe the relationship between CH EMED UnitCode and [CDTYP9](CodeSystem-chmed-codesystem-cdtyp9.html)
   * source: [CDTYP9](https://index.hcisolutions.ch/index/current/get.aspx?schema=CODE&keytype=CDTYP&key=9) in INDEX database by HCI Solutions AG
* CH EMED ValueSet [EDQM - RouteOfAdministration](http://fhir.ch/ig/ch-emed/ValueSet/edqm-routeofadministration)
   * includes codes from CH EMED CodeSystem [EDQM - Standard Terms](http://fhir.ch/ig/ch-emed/CodeSystem/edqm-standardterms)
   * binded to element Dosage.route of [CHMED Dosage](StructureDefinition-chmed-dosage.html)
   * ConceptMap [EDQMRouteOfAdministration-to-CDTYP61](ConceptMap-CHEMEDEDQMROA-to-CDTYP61.html) to describe the relationship between EDQM - RouteOfAdminstration and [CDTYP61](CodeSystem-chmed-codesystem-cdtyp61.html)
   * source: [CDTYP61](https://index.hcisolutions.ch/index/current/get.aspx?schema=CODE&keytype=CDTYP&key=61&xsl=table.xslt) in INDEX database by HCI Solutions AG
* ValueSet [EDQM - MethodOfAdministration](ValueSet-edqm-methodofadministration.html) (**TBD**: create VS)
   * includes codes from CHMED CodeSystem [EDQM - Standard Terms](CodeSystem-edqm-standardterms.html) (**TBD**: create CS)
   * binded to element Dosage.method of [CHMED Dosage](StructureDefinition-chmed-dosage.html)
   * source: [CDTYP62](https://index.hcisolutions.ch/index/current/get.aspx?schema=CODE&keytype=CDTYP&key=62&xsl=table.xslt) in INDEX database by HCI Solutions AG

### Terminology for Posology
The codes for dosage are defined in the specification 'eMedication Plan CHMED Posology'.
* ValueSet [CHMED Posology Object Type](ValueSet-chmed-valueset-posology-object-type.html)
   * includes all codes defined in CodeSystem [CHMED Posology Object Type](CodeSystem-chmed-codesystem-posology-object-type.html)
   * binded to element Dosage.extension:posologyObjectType of [CHMED Dosage](StructureDefinition-chmed-dosage.html)
* ValueSet [CHMED Timed Dosage Object Type](ValueSet-chmed-valueset-timed-dosage-object-type.html)
   * includes all codes from in CodeSystem [CHMED Timed Dosage Object Type](CodeSystem-chmed-codesystem-timed-dosage-object-type.html)
   * binded to element Dosage.extension:timedDosageObjectType of [CHMED Dosage](StructureDefinition-chmed-dosage.html)
* ValueSet [CHMED Relative to Meal](ValueSet-chmed-valueset-relative-to-meal.html)
   * includes codes defined in CodeSystem [`http://snomed.info/sct`](http://www.snomed.org/)
   * binded to element Dosage.additionalInstructions:relativeToMeal of [CHMED Dosage](StructureDefinition-chmed-dosage.html)
* ValueSet [CHMED Even/Odd Days](ValueSet-chmed-valueset-even-odd-days.html)
   * inlcudes all codes defined in CodeSystem [CHMED Even/Odd Days](CodeSystem-chmed-codesystem-even-odd-days.html)
   * binded to element Dosage.additionalInstructions:evenOddDays of [CHMED Dosage](StructureDefinition-chmed-dosage.html)


*The code systems and value sets are provided for free by HCI Solutions AG.*