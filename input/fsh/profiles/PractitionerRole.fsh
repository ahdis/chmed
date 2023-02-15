Profile: CHMEDPractitionerRole
Parent: $ch-emed-practitionerrole
Id: chmed-practitionerrole
Title: "CHMED PractitionerRole"
Description: "Profile for the PractitionerRole resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED PractitionerRole"

* practitioner only Reference(CHMEDPractitioner)
* organization only Reference(CHMEDOrganization)

* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    ZSR 0..1 
* identifier[ZSR] ^short = "Zahlstellenregister (ZSR)"
* identifier[ZSR] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value 1..



Profile: CHMEDPractitioner
Parent: $ch-emed-practitioner
Id: chmed-practitioner
Title: "CHMED Practitioner"
Description: "Profile for the Practitioner resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Practitioner"

* name ..1
* name.family 1..
* name.given 1..1


Profile: CHMEDOrganization
Parent: $ch-emed-organization
Id: chmed-organization
Title: "CHMED Organization"
Description: "Profile for the Organization resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Organization"

* address.line 1..1
* address.city 1..
* address.postalCode 1..
