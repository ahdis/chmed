Extension: CHMEDDoseQuantityTo
Id: chmed-dose-quantity-to
Title: "CHMED Dose Quantity To"
Description: "CHMED extension for representing the change of a dose quantity (from a starting quantity continously) to this final quantity"
* ^context[0].type = #extension
* ^context[=].expression = "Quantity"
* ^context[+].type = #element
* ^context[=].expression = "Dosage.doseAndRate.doseQuantity"
* . ^short = "CHMED Dose Quantity To"
* valueQuantity only CHEMEDQuantityWithEmedUnits
* valueQuantity 1..

// TODO Mapping
