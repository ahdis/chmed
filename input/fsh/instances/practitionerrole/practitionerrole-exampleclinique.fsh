Instance: practitionerrole-exampleclinique
InstanceOf: $ch-emed-practitionerrole
Title: "Sévérine Example @ Clinique"
Description: "Example of a PractitionerRole"
Usage: #example
* practitioner = Reference(practitioner-severineexample)
* organization = Reference(organization-clinique)


Instance: practitioner-severineexample
InstanceOf: $ch-emed-practitioner
Title: "Dr. Sévérine Example"
Description: "Example of a Practitioner"
Usage: #example
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000201041"
* name.family = "Example"
* name.given = "Sévérine"
* name.prefix = "Dr."


Instance: organization-clinique
InstanceOf: $ch-emed-organization
Title: "Clinique"
Description: "Example of an Organization"
Usage: #example
* name = "Clinique"
* address.city = "Martigny"
