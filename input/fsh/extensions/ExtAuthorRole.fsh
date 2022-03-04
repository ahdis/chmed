Extension: CHMEDExtensionAuthorRole
Id: chmed-author-role
Title: "CHMED Author Role"
Description: "Extension for role of the author defined in 'eMedication Plan CHMED'"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[+].type = #element
* ^context[=].expression = "Composition.author"

* . ^short = "CHMED Author Role"

* valueCoding from $ch-epr-term-authorRole (required)
* valueCoding 1..

