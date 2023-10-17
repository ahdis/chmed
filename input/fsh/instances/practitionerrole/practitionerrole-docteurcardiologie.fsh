Instance: practitionerrole-docteurcardiologie
InstanceOf: $ch-emed-practitionerrole
Title: "Sarah Docteur @ Cardiologie"
Description: "Example of a PractitionerRole"
Usage: #example
* practitioner = Reference(practitioner-sarahdocteur)
* organization = Reference(organization-centredecardiologie)


Instance: practitioner-sarahdocteur
InstanceOf: $ch-emed-practitioner
Title: "Dr. Sarah Docteur"
Description: "Example of a Practitioner"
Usage: #example
* identifier[GLN].use = #official
* identifier[GLN].system = "urn:oid:2.51.1.3"
* identifier[GLN].value = "7601000121219"
* name.family = "Docteur"
* name.given = "Sarah"
* name.prefix = "Dr."


Instance: organization-centredecardiologie
InstanceOf: $ch-emed-organization
Title: "Centre de cardiologie"
Description: "Example of an Organization"
Usage: #example
* name = "Centre de cardiologie"
* address.city = "Porrentruy"
