Extension: CHMEDExtensionReceiver
Id: chmed-receiver
Title: "CHMED Receiver"
Description: "Extension for the receiver (GLN) of the electronic prescription defined in 'eMedication Plan CHMED'"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[0].type = #element
* ^context[=].expression = "Composition"

* . ^short = "CHMED Receiver"

* valueString 1..
