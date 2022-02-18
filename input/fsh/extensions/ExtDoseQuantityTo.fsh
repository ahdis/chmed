Extension: ExtensionDoseQuantityTo
Id: chmed20af-dosequantityto
Title: "Change Dose Quantity"
Description: "Extension for representing the change of dose quantity"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* ^context[0].type = #extension
* ^context[=].expression = "Quantity"
* ^context[+].type = #element
* ^context[=].expression = "Dosage.doseAndRate.dose"
* . ^short = "if during the period the dose has to changed linearly to this quantity"
* . ^definition = "if during the period the dose has to changed linearly to this quantity"
* url only uri
* url
* valueQuantity only CHEMEDQuantityWithEmedUnits
* valueQuantity