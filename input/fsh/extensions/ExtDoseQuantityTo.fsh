Extension: CHMEDExtensionDoseQuantityTo
Id: chmed-dose-quantity-to
Title: "CHMED Dose Quantity To"
Description: "Extension for representing the change of a dose quantity (from a starting quantity continously) to this final quantity"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[0].type = #extension
* ^context[=].expression = "Quantity"
* ^context[+].type = #element
* ^context[=].expression = "Dosage.doseAndRate.doseQuantity"

* . ^short = "CHMED Dose Quantity To"

* valueQuantity only CHEMEDQuantityWithEmedUnits
* valueQuantity 1..