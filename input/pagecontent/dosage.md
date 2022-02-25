The model of dosages between CHMED21A and the CHMED (FHIR version) differ sligthly due to the FHIR dosage model.
This has an effect on how to map the different attributes form CHMED21A to CHMED.

### Posology and Dosage

* The CHMED21A model defines for a *Medicament* n *Posologies*. The posology of a medicament describes **when**, which **quantity** of the medicament must be applied. Different types of *Posology objects* can be specified to define different dosages.
* In FHIR a *[MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)/[MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)* can have n *[Dosages](https://www.hl7.org/fhir/dosage.html)* with one *[Timing](https://www.hl7.org/fhir/datatypes.html#Timing)* (which can have repeating timing defintions).



**Example:**

CHMED21A format for Posology:
```
{ 
	"DtFrom": "2021-10-07", // Taking must occur on this date (DtFrom and DtTo are equal) 
	"DtTo": "2021-10-07", 
	"RM": 1, // Before meal 
	"InRes": false, // The Medicament MUST be taken (not in reserve) 
	"PO": { 
		… // The posology object MUST specify the amount to be taken and CAN specify when 
	} 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-4.json.html)):
```json
  "dosage" : [
    {
      "additionalInstruction" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "307165006",
              "display" : "Before meal (qualifier value)"
            }
          ]
        }
      ],
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-10-07",
            "end" : "2021-10-07"
          }
        }
      },
      "asNeededBoolean" : false
    }
  ]
```

**CHMED Dosage:** 
* [Data Type Profile](StructureDefinition-chmed-dosage.html) to define the FHIR representation of the dosage according tho the 'Posology' in CHMED21A.
* [Mapping](StructureDefinition-chmed-dosage-mappings.html#mappings-for-mapping-to-chmed21a-http-emediplan-ch-chmed21a) to represent the relationship of FHIR to CHMED21A.

#### Relation to CH EMED
<span style="color:red">**CAVE:**</span>   
This Posology element mapping shown above is compatible with the [CH EMED MedicationStatement](http://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-medicationstatement-card.html) (MP), not necessarily with the [CH EMED MedicationRequest](http://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-medicationrequest.html) (Rx). In the MedicationRequest of the Swiss exchange format, the following elements are currently required for structured dosing: Dosage.timing.repeat.boundsPeriod, Dosage.timing.repeat.when, Dosage.doseAndRate.

[CHMED profiles](artifacts.html#structures-data-type-profiles) have been created for the different types of dosages, which are derived from the [C]H EMED dosage profiles](http://fhir.ch/ig/ch-emed/dosage.html#profiles). This ensures that the requirements of the Swiss exchange format are verified. To ensure compatibility with [CHMED Dosage](StructureDefinition-chmed-dosage.html), a constraint has been introduced in these CHMED dosing profiles to check this conformity. 

#### Timing Event
The code for the time of adminstration has to come from the [ValueSet EventTiming](http://hl7.org/fhir/R4/valueset-event-timing.html).   
For the representation according to the 1-1-1-1 scheme, the values MORN-NOON-EVE-NIGHT from this ValueSet are highly recommended for the Swiss use (see also [CH EMED](http://fhir.ch/ig/ch-emed/dosage.html#timing-event)).

#### Dose and Rate
The amount of medication administered is represented with SNOMED CT or UCUM codes, which are defined in the [ValueSet UnitCode](http://fhir.ch/ig/ch-emed/ValueSet-UnitCode.html) (see also [CH EMED](http://fhir.ch/ig/ch-emed/dosage.html#dose-and-rate)).   
The mapping to [CDTYP9](TBD) can be found in this [ConceptMap](TBD).


*Note for the following FHIR examples:*   
*The CH EMED exchange format requires the structured specification of units when defining [quantity](http://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-quantity.html) and [range](http://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-range.html). In CHMED21A is the Unit element (not always shown in the CHMED21A examples) on the same level as the Posology element and mandatory if Posology is defined.*

### Posology Objects
Different types of posology objects are specified in CHMED21A. Details and examples for the 6 types ([Daily](#daily), [FreeText](#free-text), [Single](#single), [Cyclic](#cyclic), [Sequence](#sequence), [Even/odd days](#evenodd-days)) are described in the following sections.

#### Daily
Describes when (morning, noon, evening, night) and how much of a medicament must be taken daily, using a simple structure.

In the exchange format CH EMED is with structured dosing the format 1-1-1-1, meaning the administration time in the morning, at noon, in the evening, at night, supported. An additional differentiation is made whether it is a normal or split dosing. For [normal dosing](http://fhir.ch/ig/ch-emed/dosage.html#normal-dosing-incl-dosage-non-structured), the dose quantity is the same at the defined administration times (e.g. 1-0-1-0, 1-0-1-0). For [split dosing](http://fhir.ch/ig/ch-emed/dosage.html#split-dosing-incl-dosage-non-structured), the dose quantity varies depending on the administration time (e.g. 1-0-2-0, 2-1-2-0).

**Example 1-0-1-0:** Take daily 1 in the morning and 1 in the evening.

CHMED21A format for Daily:
```
{
	"T": 1, // Daily posology object 
	"Ds": [ 
		1.0, // 1 pill in the morning 
		0.0, 
		1.0, // 1 pill in the evening 
		0.0 
	] 
}
```

FHIR format for Dosage (structured normal) (see also [example](MedicationStatement-card-medicationstatement-dosage-5.1-normal.json.html)):
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "when" : [
            "MORN",
            "EVE"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```
   

**Example 1-0-2-0:** Take daily 1 in the morning and 2 in the evening.

CHMED21A format for Daily:
```
{
	"T": 1, // Daily posology object 
	"Ds": [ 
		1.0, // 1 pill in the morning 
		0.0, 
		2.0, // 2 pills in the evening 
		0.0 
	] 
}
```

FHIR format for Dosage (structured split) (see also [example](MedicationStatement-card-medicationstatement-dosage-5.1-split.json.html)):
```json
  "dosage" : [
    {
      "sequence" : 0,
      "timing" : {
        "repeat" : {
          "when" : [
            "MORN"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    },
    {
      "sequence" : 0,
      "timing" : {
        "repeat" : {
          "when" : [
            "EVE"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 2,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```  


#### Free Text
Describes an unstructured posology consisting of free text.

In the exchange format CH EMED, the dosage is given as free text for the unstructured form.

**Example:** Free text.

CHMED21A format for Free Text:
```
{ 
	"T": 2, // Free text posology object 
	"Text": "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor." // Free text 
}
```

FHIR format for Dosage (non-structured) (see also [example](MedicationStatement-card-medicationstatement-dosage-5.2.json.html)):
```json
  "dosage" : [
    {
      "text" : "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor."
    }
  ]
```


#### Single
Describes a single application of a medicament. With the single field being a timing object, there are several possibilities to specify when the single application takes place.

**Example:** Take 1.

CHMED21A format for Single:
```
{ 
	"T": 3, // Single taking posology object 
	"TD": { 
		"T": 1, // Dosage only timed dosage 
		"D": { 
			"T": 1, // Amount dosage type 
			"A": 1.0 // Amount of 1 
		} 
	} 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-5.3.json.html)):
```json
  "dosage" : [
    {
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```


#### Cyclic
Describes the application of a medicament at constant intervals.

**Example:** 1 pill twice a week.

CHMED21A format for Cyclic:
```
{ 
	"T": 4, // Cyclic posology object 
	"CyDuU": 5, // weekly duration unit 
	"CyDu": 1, // 1 (week) 
	"TD": { 
		"T": 1, // Doasage only 
		"D": { 
			"T": 1, // Dosage only 
			"A": 1.0 // Amount = 1 (pill) 
		} 
	}, 
	"TDpC": 2 // take it twice within cycle 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-5.4.json.html)):
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "frequency" : 2,
          "period" : 1,
          "periodUnit" : "wk"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```

#### Sequence 
-> TBD!
Allows to combine multiple posologies with a pause as a sequence.

**Example:** Take daily 1 for 21 days, then take a break of 7 days.

CHMED21A format for Sequence:
```
{ 
	"Meds": [ 
		{ 
			"Id": "Med1", 
			"Ps": [ 
				{ 
					"PO": { 
						"T": 5, // Sequence posology object 
						"SOs": [ 
							{ 
								"T": 1, // Posology sequence sequence object 
								"PO": { 
									"T": 4, // Cyclic posology object
									"CyDuU": 4, // Daily cycle duration unit 
									"CyDu": 1, // Take every 1 (day) 
									"TD": { 
										"T": 1, // Dosage only timed dosage 
										"D": { 
											"T": 1, // Simple dosage 
											"A": 1.0 // 1 (pill) 
										} 
									}, 
									"TDpC": 1 // take it once within cycle
								}, 
								"DuU": 4, // Daily duration unit for the sequence 
								"Du": 21 // Duration of 21 (days) for the sequence 
							}, 
							{ 
								"T": 2, // Pause sequence object 
								"DuU": 4, // Daily duration unit for the sequence 
								"Du": 7 // Duration of 7 (days) for the pause 
							} 
						] 
					} 
				} 
			], 
			"U": "TABL" // Quantity unit
		} 
	] 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-5.5.json.html)):
```json
  "dosage" : [
    {
      "sequence" : 0,
      "timing" : {
        "repeat" : {
          "count" : 21,
          "frequency" : 1,
          "period" : 1,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet (unit of presentation)",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    },
    {
      "sequence" : 1,
      "timing" : {
        "repeat" : {
          "count" : 7,
          "frequency" : 1,
          "period" : 1,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 0,
            "unit" : "Tablet (unit of presentation)",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    }
  ]
```

#### Even/Odd Days
Allows to specify a posology that must be applied on even or odd days.

**Example:** Take 1 on even days, starting 02.01.2021.

CHMED21A format for Even/Odd days:
```
{ 
	"Meds": [ 
		{ 
			"Id": "Med1", 
			"Ps": [ 
				{ 
					"DtFrom": "2021-01-02", // Posology start 
					"PO": { 
						"T": 6, // EvenOddDays posology object 
						"TD": { 
							"T": 1, // Dosage only timed dosage 
							"D": { 
								"T": 1, // Simple dosage 
								"A": 1.0 // Take 1 (pill) 
							} 
						}, 
						"E": true // Take on even days 
					} 
				} 
			], 
			"U": "TABL" // Quantity unit
		} 
	] 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-5.6.json.html)):
```json
  "dosage" : [
    {
      "additionalInstruction" : [
        {
          "coding" : [
            {
              "system" : "http://chmed20af.emediplan.ch/fhir/CodeSystem/chmed20af-codesystem-even-odd-days",
              "code" : "even",
              "display" : "Even days"
            }
          ]
        }
      ],
      "timing" : {
        "repeat" : {
          "boundsPeriod" : {
            "start" : "2021-01-02"
          },
          "frequency" : 1,
          "period" : 2,
          "periodUnit" : "d"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Tablet (unit of presentation)",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    }
  ]
```


### Timed Dosage Objects
Different types of timed dosage objects are defined in CHMED21A to specify the moment and amount of an application of a medicament. Details and examples for the 6 types ([DosageOnly](#dosageonly), [Times](#times), [DaySegments](#daysegments), [WeekDays](#weekdays), [DaysOfMonth](#daysofmonth), [Interval](#interval)) are described in the following sections.

#### DosageOnly
Specifies a dosage without specifying a precise taking moment.

**Example:** Take 1.

CHMED21A format for DosageOnly:
```
{ 
	"T": 1, // DosageOnly timed dosage object 
	"D": { 
		"T": 1, // Simple dosage dosage object 
		"A": 1.0 // Amount of 1 
	} 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-6.1.json.html)):
```json
  "dosage" : [
    {
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```

#### Times
Specifies precise times when a medicament must be applied.

**Example:** Take 1 at 08:00.

CHMED21A format for Times:
```
{ 
	"T": 2, // Times timed dosage object 
	"Ts": [ 
		{ 
			"OffU": 3, // Offset unit is hours 
			"Off": 8, // Offset of 8 (hours) 
			"D": { 
				"T": 1, // Simple dosage dosage object 
				"A": 1.0 // Amount of 1 
			} 
		} 
	] 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-6.2.json.html)):
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "timeOfDay" : [
            "08:00:00"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```

#### DaySegments
Specifies the day segment (morning, noon, evening, night) when a medicament must be applied.

**Example:** Take 1 in the evening.

CHMED21A format for DaySegments:
```
{ 
	"T": 3, // DaySegments timed dosage object 
	"Ts": [ 
		{ 
			"S": 3, // Evening segment 
			"D": { 
				"T": 1, // Simple dosage dosage object 
				"A": 1.0 // Amount of 1 
			} 
		} 
	] 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-6.3.json.html)):
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "when" : [
            "EVE"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```

#### WeekDays
Specifies on which days of the week a medicament must be applied.

**Example:** Take 1 on Monday, Wednesday and Friday.

CHMED21A format for WeekDays:
```
{ 
	"T": 4, // Weekdays timed dosage object 
	"WDs": [ 1, 3, 5 ], // Days of week Monday, Wednesday, Friday 
	"TD": { 
		"T": 1, // Dosage only timed dosage 
		"D": { 
			"T": 1, // Simple dosage dosage type 
			"A": 1.0 // Amount of 1 
		} 
	} 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-6.4.json.html)):
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "dayOfWeek" : [
            "mon",
            "wed",
            "fri"
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```

#### DaysOfMonth
Specifies on which days of the month a medicament must be applied.

**Example:** Take 1 on the 1st and 15th of the month.

CHMED21A format for DaysOfMonth:
```
{ 
	"T": 5, // DaysOfMonth timed dosage 
	"Ds": [ 1, 15 ], // Specified days in month 
	"TD": { 
		"T": 1, // DosageOnly timed dosage 
		"D": { 
			"T": 1, // Simple dosage dosage object 
			"A": 1.0 // Amount of 1 
		} 
	} 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-6.5.json.html)):
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth",
              "valuePositiveInt" : 1
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/timing-dayOfMonth",
              "valuePositiveInt" : 15
            }
          ]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 1,
            "unit" : "Piece",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Piece}"
          }
        }
      ]
    }
  ]
```

#### Interval
Specifies the application of a medicament with a minimal interval between two applications.

**Example:** Apply medication with a minimal interval of 6 hours between two applications.

CHMED21A format for Interval:
```
{ 
	"T": 6, // Interval timed dosage 
	"D": { … }, 
	"MIDU": 3, // Min interval duration unit in hours 
	"MID": 6 // Min interval of 6 (hours)
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-4.json.html)):
```json
"dosage": [
    {
        "maxDosePerPeriod": {
            "numerator": {
                "value": 1,
                "unit": "Piece",
                "system": "http://unitsofmeasure.org",
                "code": "{Piece}"
            },
            "denominator": {
                "value": 6,
                "unit": "Hour",
                "system": "http://unitsofmeasure.org",
                "code": "h"
            }
        }
    }
]
```


### Dosage Objects
Dosage objects are specified in CHMED21A and describe the amount of a medication that must be applied. Details and examples for the 3 types ([DosageSimple](#dosagesimple), [DosageFromTo](#dosagefromto), [DosageRange](#dosagerange)) are described in the following sections.

TBD: If their is a dosage change within the posology in CHMED16A different dosage elements have to be created in FHIR (CHMED20AF).

#### DosageSimple
Specifies a simple amount. E.g., 1 (pill) or 10 (ml).

**Example:** Take 1.

CHMED21A format for DosageSimple:
```
{ 
	"T": 1, // Simple dosage 
	"A": 1.0 // Amount of 1 
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-4.json.html)):
```json
"dosage": [
    {
        "doseAndRate": [
            {
                "doseQuantity": {
                    "value": 1,
                    "unit": "Piece",
                    "system": "http://unitsofmeasure.org",
                    "code": "{Piece}"
                }
            }
        ]
    }
]
```
#### DosageFromTo
Specifies how a dosage changes during time. This can be e.g., used for infusions.

<span style="color:red">TBD: Work in progress!</span>

If the dosage changes, multiple dosage elements have to be defined in FHIR: See example [increasing dosage every hour](MedicationStatement-card-medicationstatement-tt-1-diffrates-mabthera.html), [tapered dosing](MedicationStatement-card-medicationstatement-tt-4-spiricort.html).   
An [extension](StructureDefinition-chmed20af-dosequantityto.html) has been defined to change the quantity from the starting quantity continously to the final quantity (example increase from 50 ml to 200 ml):

**Example:** Start with a dosage of 5, end with a dosage of 10 during a time interval of 45 minutes.

CHMED21A format for DosageFromTo:
```
{ 
	"T": 2, // DosageFromTo 
	"AFrom": 5.0, // Start amount is 5 
	"ATo": 10.0, // End amount is 10 
	"DuU": 2, // Duration unit is minutes 
	"Du": 45 // Duration is 45 (minutes) 
}
```





```xml
	<fhir:doseQuantity>
		<fhir:extension url="http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-dosequantityto">
			<fhir:valueQuantity>
				<fhir:value value="200"/>
				<fhir:unit value="milliliter"/>
				<fhir:system value="http://unitsofmeasure.org"/>
				<fhir:code value="mL"/>
			</fhir:valueQuantity>
		</fhir:extension>
		<fhir:value value="50"/>
		<fhir:unit value="milliliter"/>
		<fhir:system value="http://unitsofmeasure.org"/>
		<fhir:code value="mL"/>
	</fhir:doseQuantity>
```


#### DosageRange
With a dosage range a min and must amount must be specified.

**Example:** Take 1 in the evening.

CHMED21A format for DosageRange:
```
{ 
	"T": 3, // DosageRange dosage 
	"AMin": 1.0, // Minimum amount of 1 
	"AMax": 3.0 // Maximum amount of 3
}
```

FHIR format for Dosage (see also [example](MedicationStatement-card-medicationstatement-dosage-4.json.html)):
```json
"dosage": [
    {
        "doseAndRate": [
            {
                "doseRange": {
                    "low": {
                        "value": 1,
                        "unit": "Piece",
                        "system": "http://unitsofmeasure.org",
                        "code": "{Piece}"
                    },
                    "high": {
                        "value": 3,
                        "unit": "Piece",
                        "system": "http://unitsofmeasure.org",
                        "code": "{Piece}"
                    }
                }
            }
        ]
    }
]
```

### Sequence Objects
Sequence objects are defined in CHMED21A to specify a sequence of posologies that have to be respected in the correct order and can possibly be repeated. Details and examples for the 2 types ([PosologySequence](#posologysequence), [Pause](#pause)) are described in the following sections.

#### PosologySequence

#### Pause


### Taking Objects
Taking objects are defined in CHMED21A to specify a dosage that must be applied at certain times; either at a precise time or in a day’s segment (morning, noon, evening or night). Details and examples for the 2 possibilities ([TakingAtTime](#takingattime), [TakingInSegment](#takinginsegment)) are described in the following sections.

#### TakingAtTime

#### TakingInSegment


