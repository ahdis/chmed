Instance: observation-prematurebaby-bm
InstanceOf: CHMEDPrematureBaby
Title: "Premature Baby (Baby Müller)"
Description: "Example of an Observation - Premature Baby: true (only if age <= 18 months)"
Usage: #example
* status = #final
* code = $sct#395507008 "Premature infant"
* subject = Reference(card-patient-babymueller)
* valueBoolean = true
* performer = Reference(practitionerrole-weiseweitblick)
* effectiveDateTime = "2023-02-09"
