*The code systems and value sets are provided for free by HCI Solutions AG.*

### Terminology for Risks
* ValueSet [CHMED Risk Categories](ValueSet-chmed-valueset-risks-category.html)
   * includes all codes defined in CodeSystem [CHMED Risk Categories](CodeSystem-chmed-codesystem-risks-category.html) 
   * binded to element [Condition.category](StructureDefinition-chmed-condition-risks.html)
   * source: eMedication Plan ChMed23A
* ValueSet [CHMED Risks](ValueSet-chmed-valueset-risks-cdscode.html)
   * includes all codes defined in CodeSystem [CHMED Risks](CodeSystem-chmed-codesystem-risks-cdscode.html)
   * binded to element [Condition.code](StructureDefinition-chmed-condition-risks.html)
   * source: [CDSCODE](https://index.hcisolutions.ch/DataDoc/element/cdscode) in INDEX database by HCI Solutions AG
* ConceptMap [Risk Categories to Risks](ConceptMap-RiskCategories-to-Risks.html) to describe the relationship between them


### Terminology for Medicament
* CH EMED ValueSet [UnitCode](http://fhir.ch/ig/ch-emed/ValueSet/UnitCode)
   * includes codes from CodeSystem [`http://snomed.info/sct`](http://www.snomed.org/) and [`http://unitsofmeasure.org`](http://unitsofmeasure.org/)
   * binded to data type [CH EMED Quantity with units](http://fhir.ch/ig/ch-emed/StructureDefinition/ch-emed-quantity)
   * ConceptMap [CH EMED UnitCode to CDTYP9](ConceptMap-CHEMEDUnitCode-to-CDTYP9.html) to describe the relationship between CH EMED UnitCode and [CHMED Unit](CodeSystem-chmed-codesystem-cdtyp9.html)
   * source: [CDTYP9](https://index.hcisolutions.ch/index/current/get.aspx?schema=CODE&keytype=CDTYP&key=9) in INDEX database by HCI Solutions AG
* CH EMED ValueSet [EDQM - RouteOfAdministration](http://fhir.ch/ig/ch-emed/ValueSet/edqm-routeofadministration)
   * includes codes from CH EMED CodeSystem [EDQM - Standard Terms](http://fhir.ch/ig/ch-emed/CodeSystem/edqm-standardterms)
   * binded to element Dosage.route
   * ConceptMap [CH EMED EDQM RouteOfAdministration to CDTYP61](ConceptMap-CHEMEDEDQMROA-to-CDTYP61.html) to describe the relationship between EDQM - RouteOfAdminstration and [CHMED Route of Administration](CodeSystem-chmed-codesystem-cdtyp61.html)
   * source: [CDTYP61](https://index.hcisolutions.ch/index/current/get.aspx?schema=CODE&keytype=CDTYP&key=61&xsl=table.xslt) in INDEX database by HCI Solutions AG
* ValueSet [CHMED Method of Administration](ValueSet-chmed-valueset-cdtyp62.html)
   * includes codes from CodeSystem [CHMED Method of Administration](CodeSystem-chmed-codesystem-cdtyp62.html)
   * binded to element Dosage.method
   * source: [CDTYP62](https://index.hcisolutions.ch/index/current/get.aspx?schema=CODE&keytype=CDTYP&key=62&xsl=table.xslt) in INDEX database by HCI Solutions AG

### Terminology for Posology
* ValueSet [CHMED Posology Detail Object Type](ValueSet-chmed-valueset-posology-detail-object-type.html)
   * includes all codes defined in CodeSystem [CHMED Posology Detail Object Type](CodeSystem-chmed-codesystem-posology-detail-object-type.html)
   * binded to element [Dosage.extension:posologyDetailObjectType](StructureDefinition-chmed-dosage.html)
* ValueSet [CHMED Timed Dosage Object Type](ValueSet-chmed-valueset-timed-dosage-object-type.html)
   * includes all codes from in CodeSystem [CHMED Timed Dosage Object Type](CodeSystem-chmed-codesystem-timed-dosage-object-type.html)
   * binded to element [Dosage.extension:timedDosageObjectType](StructureDefinition-chmed-dosage.html)
* ValueSet [CHMED Relative to Meal](ValueSet-chmed-valueset-relative-to-meal.html)
   * includes codes defined in CodeSystem [`http://snomed.info/sct`](http://www.snomed.org/)
   * binded to element [Dosage.additionalInstructions](StructureDefinition-chmed-dosage.html)
