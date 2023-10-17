Instance: practitionerrole-franznotfall
InstanceOf: $ch-emed-practitionerrole
Title: "Not Franz @ Notfall"
Description: "Example of a PractitionerRole"
Usage: #example
* practitioner = Reference(practitioner-notfranz)
* organization = Reference(organization-notfall)


Instance: practitioner-notfranz
InstanceOf: $ch-emed-practitioner
Title: "Dr. Not Franz"
Description: "Example of a Practitioner"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601003178999"
* name.family = "Franz"
* name.given = "Not"
* name.prefix = "Dr."


Instance: organization-notfall
InstanceOf: $ch-emed-organization
Title: "Notfall"
Description: "Example of an Organization"
Usage: #example
* name = "Notfall"
* address.city = "Frauenfeld"
