ValueSet: RelativeToMeal
Id: chmed-valueset-relative-to-meal
Title: "CHMED Relative to Meal"
Description: "Value set for specifying whether a medicament must be taken relative to a meal"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* ^experimental = false

* $sct#307165006 "Before meal (qualifier value)" // 1: Before
* $sct#309612007 "During meal (qualifier value)" // 2: During
* $sct#24863003 "Postprandial (qualifier value)" // 3: After
