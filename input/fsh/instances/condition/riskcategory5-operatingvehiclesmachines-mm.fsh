Instance: riskcategory5-operatinvehiclesmachines-mm
InstanceOf: CHMEDRisks
Title: "Risk Category 5 (Maxima Matter)"
Description: "Example of a Condition - Operating Vehicles/Machines"
Usage: #example
* clinicalStatus = $condition-clinical#active
* category = $chmed-codesystem-risks-category#5 "Operating vehicles/machines"
* subject = Reference(card-patient-maximamatter)
