ValueSet: CDTYP62
Id: chmed-valueset-cdtyp62
Title: "CHMED Method of Administration"
Description: "Value set for methods of administration (MOA)"
* ^publisher = "HCI Solutions AG"
* ^contact.name = "Hotline"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "hotline@hcisolutions.ch"
* ^experimental = false

* include codes from system CDTYP62


CodeSystem: CDTYP62
Id: chmed-codesystem-cdtyp62
Title: "CHMED Method of Administration"
Description: "Code system for method of administration (MOA) codes, 
based on the method of administration codes of the 'EDQM Standard Terms' codes system, 
which is accessible over https://standardterms.edqm.eu"
* ^identifier.system = "https://index.hcisolutions.ch/codes/"
* ^identifier.value = "cdtyp62"
* ^publisher = "HCI Solutions AG"
* ^contact.name = "Hotline"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "hotline@hcisolutions.ch"
* ^caseSensitive = true
* ^content = #complete
* ^experimental = false

* #10 "Inhalation"
* #10 ^designation[0].language = #de-CH
* #10 ^designation[=].value = "Inhalation"
* #10 ^designation[+].language = #fr-CH
* #10 ^designation[=].value = "inhalation"

* #11 "Injektion"
* #11 ^designation[0].language = #de-CH
* #11 ^designation[=].value = "Injektion"
* #11 ^designation[+].language = #fr-CH
* #11 ^designation[=].value = "injection"

* #112 "Dialyse"
* #112 ^designation[0].language = #de-CH
* #112 ^designation[=].value = "Dialyse"
* #112 ^designation[+].language = #fr-CH
* #112 ^designation[=].value = "dialyse"

* #113 "Implantation"
* #113 ^designation[0].language = #de-CH
* #113 ^designation[=].value = "Implantation"
* #113 ^designation[+].language = #fr-CH
* #113 ^designation[=].value = "implantation"

* #12 "Insertion"
* #12 ^designation[0].language = #de-CH
* #12 ^designation[=].value = "Insertion"
* #12 ^designation[+].language = #fr-CH
* #12 ^designation[=].value = "insertion"

* #13 "Instillation"
* #13 ^designation[0].language = #de-CH
* #13 ^designation[=].value = "Instillation"
* #13 ^designation[+].language = #fr-CH
* #13 ^designation[=].value = "instillation"

* #17 "sprühen"
* #17 ^designation[0].language = #de-CH
* #17 ^designation[=].value = "sprühen"
* #17 ^designation[+].language = #fr-CH
* #17 ^designation[=].value = "pulvériser"

* #18 "lutschen"
* #18 ^designation[0].language = #de-CH
* #18 ^designation[=].value = "lutschen"
* #18 ^designation[+].language = #fr-CH
* #18 ^designation[=].value = "sucer"

* #19 "schlucken"
* #19 ^designation[0].language = #de-CH
* #19 ^designation[=].value = "schlucken"
* #19 ^designation[+].language = #fr-CH
* #19 ^designation[=].value = "avaler"

* #4 "Administration"
* #4 ^designation[0].language = #de-CH
* #4 ^designation[=].value = "Administration"
* #4 ^designation[+].language = #fr-CH
* #4 ^designation[=].value = "administration"

* #5 "Applikation"
* #5 ^designation[0].language = #de-CH
* #5 ^designation[=].value = "Applikation"
* #5 ^designation[+].language = #fr-CH
* #5 ^designation[=].value = "application"

* #7 "kauen"
* #7 ^designation[0].language = #de-CH
* #7 ^designation[=].value = "kauen"
* #7 ^designation[+].language = #fr-CH
* #7 ^designation[=].value = "mâcher"

* #8 "gurgeln"
* #8 ^designation[0].language = #de-CH
* #8 ^designation[=].value = "gurgeln"
* #8 ^designation[+].language = #fr-CH
* #8 ^designation[=].value = "se gargariser"

* #9 "Infusion"
* #9 ^designation[0].language = #de-CH
* #9 ^designation[=].value = "Infusion"
* #9 ^designation[+].language = #fr-CH
* #9 ^designation[=].value = "perfusion"
