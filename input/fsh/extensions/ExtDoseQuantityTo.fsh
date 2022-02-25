Extension: CHMEDExtensionDoseQuantityTo
Id: chmed-dosequantityto
Title: "CHMED Dose Quantity To"
Description: "Extension for representing the change of a dose quantity (from a starting quantity continously) to this final quantity"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* ^context[0].type = #extension
* ^context[=].expression = "Quantity"
* ^context[+].type = #element
* ^context[=].expression = "Dosage.doseAndRate.doseQuantity"
* . ^short = "If during a period of time the dose has to be changed linearly to this quantity"

* valueQuantity only CHEMEDQuantityWithEmedUnits
* valueQuantity 1..