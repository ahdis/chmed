Instance: practitionerrole-rezeptpraxis
InstanceOf: $ch-emed-practitionerrole
Title: "Rezept @ Praxis"
Description: "Example of a PractitionerRole"
Usage: #example
* practitioner = Reference(practitioner-karlrezept)
* organization = Reference(organization-praxis)


Instance: practitioner-karlrezept
InstanceOf: $ch-emed-practitioner
Title: "Dr. Karl Rezept"
Description: "Example of a Practitioner"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000618627"
* name.family = "Rezept"
* name.given = "Karl"
* name.prefix = "Dr."


Instance: organization-praxis
InstanceOf: $ch-emed-organization
Title: "Praxis"
Description: "Example of an Organization"
Usage: #example
* name = "Praxis"
* address.city = "Langenthal"
