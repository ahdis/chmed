Instance: practitionerrole-weiseweitblick
InstanceOf: CHMEDPractitionerRole
Title: "F. Weise @ Weitblick"
Description: "Example of a PractitionerRole"
Usage: #example
* practitioner = Reference(practitioner-fweise)
* organization = Reference(organization-praxisweitblick)


Instance: practitioner-fweise
InstanceOf: CHMEDPractitioner
Title: "Dr. med. F. Weise"
Description: "Example of a Practitioner"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601002322553"
* name.family = "Weise"
* name.given = "F."
* name.prefix = "Dr. med."


Instance: organization-praxisweitblick
InstanceOf: CHMEDOrganization
Title: "Praxis Weitblick"
Description: "Example of an Organization"
Usage: #example
* name = "Praxis Weitblick"
* address.line = "Die Weite 9a"
* address.city = "Berg"
* address.postalCode = "9288"
