The model of the ChMed23A Posology and the CHMED Dosage (FHIR) differ due to the FHIR dosage structure. This has an effect on how to map the different attributes from ChMed23A to CHMED.

### ChMed23A Posology and CHMED Dosage (FHIR)
* The [eMedication Plan ChMed23A Posology](https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf) defines for a *Medicament* object 0-N *Posology* objects. The posology of a medicament describes **when**, **which quantity** of the medicament must be applied. Different kind of posologies can be specified with the available *PosologyDetail* objects.
* In FHIR a *[MedicationStatement](http://hl7.org/fhir/R4/medicationstatement.html)/[MedicationRequest](http://hl7.org/fhir/R4/medicationrequest.html)* can have n *[Dosages](https://www.hl7.org/fhir/R4/dosage.html)* with one *[Timing](https://www.hl7.org/fhir/R4/datatypes.html#Timing)* (which can have repeating timing defintions).

**Example**:

ChMed23A format for Posology:
```
{
  "dtFrom": "2023-07-13",
  "dtTo": "2023-08-13",
  "relMeal": 1,
  "inRes": false,
  "po": { … },
}
```

CHMED format for Dosage (see also [full example](MedicationStatement-dosage-example.json.html)):
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
            "start" : "2023-07-13",
            "end" : "2023-08-13"
          }
        }
      },
      "asNeededBoolean" : false
    }
  ]
```

#### CHMED Dosage (FHIR)
The [CHMED Dosage](StructureDefinition-chmed-dosage.html) data type profile includes additional specification to be able to map the dosage according to the requirements of the eMedication Plan ChMed23A Posology.

<div markdown="5" class="dragon">
    <p>
      <b>Relation to CH EMED</b>
    </p>
    <p>
      CHMED is based on CH EMED, the Swiss exchange format that currently does not support complex structured dosing (see details <a href="https://fhir.ch/ig/ch-emed/dosage.html">here</a>). A normal dosage (e.g. according to the 1-1-1-1 scheme) is compatible between all formats (ChMed23A, CHMED, CH EMED). For more complex dosages, as described below, there is only conditional compatibility. The critical points are described in the respective examples below.
    </p>
    <p>
      Please note that the FHIR representations of the CHMED dosage are suggestions. By gaining experience, there may be optimizations to be made. If you have any feedback/input, please use the 'Propose a change' link in the footer of the page.
    </p>
</div>
<p>&nbsp;</p>

<span style="color:red">NOTE:</span>    
**CH EMED**: The exchange format requires the structured specification of units when defining [quantity](http://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-quantity.html), [range](http://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-range.html) and [ratio](https://fhir.ch/ig/ch-emed/StructureDefinition-ch-emed-ratio.html). Therefore the unit is always shown in the CHMED examples below, where quantity or range is given.     
**ChMed23A**: The unit of the dosage specified is set on the *Medicament* object and also mandatory if the posology is defined. Because of the different level the unit is not shown in each ChMed23 examples below.

### PosologyDetail Objects
Different [types of PosologyDetail objects](ValueSet-chmed-valueset-posology-detail-object-type.html) are available. E.g. the daily posology object can be used to easily define daily dosages for morning, noon, evening and night or a sequence can be used to specify a complex posology like ‘take daily for 2 weeks, then take a break of 2 days”.   

Details and examples for the 5 types ([Daily](#daily), [FreeText](#freetext), [Single](#single), [Cyclic](#cyclic), [Sequence](#sequence)) are shown in the following sections.   

#### Daily
Describes when (morning, noon, evening, night) and how much of a medicament must be applied daily, using a simple structure.

##### Day segments
1. Morning -> [MORN](http://hl7.org/fhir/R4/valueset-event-timing.html)
2. Noon -> [NOON](http://hl7.org/fhir/R4/valueset-event-timing.html)
3. Evening -> [EVE](http://hl7.org/fhir/R4/valueset-event-timing.html)
4. Night -> [NIGHT](http://hl7.org/fhir/R4/valueset-event-timing.html)

<span style="color:red">NOTE:</span>     
**CH EMED**: In the structured form, the format 1-1-1-1, meaning the administration time in the morning, at noon, in the evening, at night, is supported. For [normal dosing](https://fhir.ch/ig/ch-emed/dosage.html#normal-dosing), the dose quantity is the same at the defined administration times (e.g. 1-0-0-0, 1-0-1-0). For [split dosing](https://fhir.ch/ig/ch-emed/dosage.html#normal-dosing), the dose quantity varies depending on the administration time (e.g. 1-0-2-0, 2-1-2-0). For split dosing more than one dosage element is used. The dosage sequences are numbered in ascending order (starting with 1).     
**CHMED**: To be able to map the posology detail object [sequence](#sequence) as well, the sequence element numbering must be handled differently. If more than one dosage element is used, sequence = 0 in all elements does mean, the dosage is concurrent (see example 1.5-0-2-0 in this section). If the sequence number is different (1, 2 etc.) the dosage is sequential (see example in the sequence section).   

**Example 1-0-1-0:** Take daily 1 in the morning and 1 in the evening.

ChMed23A format:
```
{
	"t": 1, // Daily
	"ds": [ 
		1, // 1 pill in the morning 
		0 
		1, // 1 pill in the evening 
		0 
	] 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "1",
            "display" : "Daily"
          }
        }
      ],
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
   

**Example 1.5-0-2-0:** Take daily 1.5 in the morning and 2 in the evening.

ChMed23A format:
```
{
	"t": 1, // Daily
	"ds": [ 
		1.5, // 1.5 (pills) in the morning 
		0, 
		2, // 2 (pills) in the evening 
		0 
	] 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "1",
            "display" : "Daily"
          }
        }
      ],
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
            "value" : 1.5,
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


#### FreeText
Describes an unstructured posology consisting of free text.

<span style="color:red">NOTE:</span>     
**ChMed23A**: Medicament.appInstr (Dosage.patientInstruction) -> _Please note: For unstructured posology we recommend using the Posology object FreeText instead of AppInstr._

**Example:** Free text.

ChMed23A format:
```
{ 
	"t": 2, // Free text 
	"text": "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor."
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "2",
            "display" : "FreeText"
          }
        }
      ],
      "patientInstruction" : "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor."
    }
  ]
```


#### Single
Describes a single application of a medicament. With the TimedDosage object, there are several possibilities to specify when the single application takes place.

**Example:** Take 1.

ChMed23A format:
```
{ 
	"t": 3, // Single application
	"tdo": { 
		"t": 1, // Dosage only
		"d": { 
			"t": 1, // Simple dosage
			"a": 1 // Amount of 1 
		} 
	} 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "3",
            "display" : "Single"
          }
        },
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "1",
            "display" : "DosageOnly"
          }
        }
      ],
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

##### Time units
1. Second -> [s](http://hl7.org/fhir/R4/valueset-units-of-time.html)
2. Minute -> [min](http://hl7.org/fhir/R4/valueset-units-of-time.html)
3. Hour -> [h](http://hl7.org/fhir/R4/valueset-units-of-time.html)
4. Day -> [d](http://hl7.org/fhir/R4/valueset-units-of-time.html)
5. Week -> [wk](http://hl7.org/fhir/R4/valueset-units-of-time.html)
6. Month -> [mo](http://hl7.org/fhir/R4/valueset-units-of-time.html)
7. Year -> [a](http://hl7.org/fhir/R4/valueset-units-of-time.html)

**Example:** 1 pill twice a week.

ChMed23A format:
```
{ 
	"t": 4, // Cyclic
	"cyDuU": 5, // weekly duration unit 
	"cyDu": 5, // Cycle duration of 5 (week) 
	"tdo": { 
		"t": 1, // Doasage only 
		"d": { 
			"t": 1, // Simple dosage
			"a": 1 // Amount of 1
		} 
	}, 
	"tdpc": 2 // take twice within cycle 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "4",
            "display" : "Cyclic"
          }
        },
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "1",
            "display" : "DosageOnly"
          }
        }
      ],
      "timing" : {
        "repeat" : {
          "frequency" : 2,
          "period" : 5,
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
Allows multiple posologies to be combined with a pause as a sequence.

<span style="color:red">NOTE:</span>    
**CHMED**: It can only be mapped to FHIR if the cycle duration unit (cyDuU) and the unit of the duration (duU) have the same time units.

**Example:** Take daily 1 for 21 days, then take a break of 7 days.

ChMed23A format:
```
{
  "t": 5, // Sequence
  "sos": [
    {
      "t": 1, // Posology sequence
      "po": {
        "t": 4, // Cyclic
        "cyDuU": 4, // Daily cycle duration unit
        "cyDu": 1, // Take every 1 (day)
        "td": {
          "t": 1, // Dosage only
          "d": {
            "t": 1, // Simple dosage
            "a": 1 // Amount of 1
          }
        },
        "tdpc": 1 // take once within cycle
      },
      "duU": 4, // Daily duration unit
      "du": 21 // Duration of 21 (days)
    },
    {
      "t": 2, // Pause
      "duU": 4, // Daily duration unit
      "du": 7 // Duration of 7 (days) 
    } 
  ] 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "5",
            "display" : "Sequence"
          }
        },
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-posology-detail-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-posology-detail-object-type",
            "code" : "4",
            "display" : "Cyclic"
          }
        },
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "1",
            "display" : "DosageOnly"
          }
        }
      ],
      "sequence" : 1,
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
      "sequence" : 2,
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




### TimedDosage Objects
Different [types of TimedDosage objects](ValueSet-chmed-valueset-timed-dosage-object-type.html) are available to specify the moment and amount of an application of a medicament. All TimedDosage objects must specify an amount to be applied. It is not mandatory to specify the moment of the application, but it is possible to set them precisely (time of day) or vaguely (day of week or month, day segment etc.).

Details and examples for the 6 types ([DosageOnly](#dosageonly), [Times](#times), [DaySegments](#daysegments), [WeekDays](#weekdays), [DaysOfMonth](#daysofmonth), [Interval](#interval)) are shown in the following sections.

#### DosageOnly
Specifies a dosage without specifying a precise moment for taking.

**Example:** Take 1.

ChMed23A format:
```
{ 
	"t": 1, // Dosage only
	"do": { 
		"t": 1, // Simple dosage
		"a": 1 // Amount of 1 
	} 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "1",
            "display" : "DosageOnly"
          }
        }
      ],
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

ChMed23A format:
```
{ 
	"t": 2, // Times
	"ts": [ 
		{ 
			"dt": "08:00:00", // Time of day
			"do": { 
				"t": 1, // Simple dosage
				"a": 1 // Amount of 1 
			} 
		} 
	] 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "2",
            "display" : "Times"
          }
        }
      ],
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

ChMed23A format:
```
{ 
	"t": 3, // day segments 
	"ss": [ 
		{ 
			"s": 3, // Evening
			"do": { 
				"t": 1, // Simple dosage
				"a": 1 // Amount of 1 
			} 
		} 
	] 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "3",
            "display" : "DaySegments"
          }
        }
      ],
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

##### Days of week
1. Monday -> [mon](http://hl7.org/fhir/R4/valueset-days-of-week.html)
2. Tuesday -> [tue](http://hl7.org/fhir/R4/valueset-days-of-week.html)
3. Wednesday -> [wed](http://hl7.org/fhir/R4/valueset-days-of-week.html)
4. Thursday -> [thu](http://hl7.org/fhir/R4/valueset-days-of-week.html)
5. Friday -> [fri](http://hl7.org/fhir/R4/valueset-days-of-week.html)
6. Saturday -> [sat](http://hl7.org/fhir/R4/valueset-days-of-week.html)
7. Sunday  -> [sun](http://hl7.org/fhir/R4/valueset-days-of-week.html)

**Example:** Take 1 on Monday, Wednesday and Friday.

ChMed23A format:
```
{ 
	"t": 4, // Weekdays
	"wds": [ 1, 3, 5 ], // Monday, Wednesday, Friday 
	"tdo": { 
		"t": 1, // Dosage only
		"do": { 
			"t": 1, // Simple dosage
			"a": 1 // Amount of 1 
		} 
	} 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "4",
            "display" : "WeekDays"
          }
        }
      ],
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

ChMed23A format:
```
{ 
	"t": 5, // Days of month
	"doms": [ 1, 15 ], // Specified days in month 
	"tdo": { 
		"t": 1, // Dosage only
		"do": { 
			"t": 1, // Simple dosage
			"a": 1 // Amount of 1 
		} 
	} 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "5",
            "display" : "DaysOfMonth"
          }
        }
      ],
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

ChMed23A format:
```
{ 
	"t": 6, // Interval 
	"do": {
    "t": 1, // Simple dosage
    "a": 1 // Amount of 1
  }, 
	"miDuU": 3, // Hours interval unit
	"miDu": 6 // Every 6 (hours)
}
```

CHMED format:
```json
  "dosage" : [
    {
      "extension" : [
        {
          "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-timed-dosage-object-type",
          "valueCoding" : {
            "system" : "http://chmed.emediplan.ch/fhir/CodeSystem/chmed-codesystem-timed-dosage-object-type",
            "code" : "6",
            "display" : "Interval"
          }
        }
      ],
      "maxDosePerPeriod" : {
        "numerator" : {
          "value" : 1,
          "unit" : "Piece",
          "system" : "http://unitsofmeasure.org",
          "code" : "{Piece}"
        },
        "denominator" : {
          "value" : 6,
          "unit" : "Hour",
          "system" : "http://unitsofmeasure.org",
          "code" : "h"
        }
      }
    }
  ]
```


### Dosage Objects
Dosage objects describe the amount of a medication that must be applied.     
Note that the unit of the amount is specified by the unit set for the Medicament.  

Details and examples for the 3 types ([DosageSimple](#dosagesimple), [DosageFromTo](#dosagefromto), [DosageRange](#dosagerange)) are shown in the following sections.

#### DosageSimple
Specifies a simple amount. E.g. 1 (pill) or 10 (ml).

**Example:** Take 1.

ChMed23A format:
```
{ 
	"t": 1, // Simple dosage 
	"a": 1 // Amount of 1 
}
```

CHMED format:
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

#### DosageFromTo
Specifies how a dosage changes during time. This can be e.g. used for infusions.

<span style="color:red">NOTE:</span>    
**CHMED**: The extension [CHMED Dose Quantity To](StructureDefinition-chmed-dose-quantity-to.html) has been defined to change the quantity from the starting quantity continously to the final quantity.

**Example:** Start with a dosage of 5, end with a dosage of 10 during a time interval of 45 minutes.

ChMed23A format:
```
{ 
	"t": 2, // From/to dosage
	"aFrom": 5, // Start amount is 5 
	"aTo": 10, // End amount is 10 
	"duU": 2, // Duration unit is minutes 
	"du": 45 // Duration is 45 (minutes) 
}
```

CHMED format:
```json
  "dosage" : [
    {
      "timing" : {
        "repeat" : {
          "duration" : 45,
          "durationUnit" : "min"
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "extension" : [
              {
                "url" : "http://chmed.emediplan.ch/fhir/StructureDefinition/chmed-dose-quantity-to",
                "valueQuantity" : {
                  "value" : 10,
                  "unit" : "milliliter",
                  "system" : "http://unitsofmeasure.org",
                  "code" : "mL"
                }
              }
            ],
            "value" : 5,
            "unit" : "milliliter",
            "system" : "http://unitsofmeasure.org",
            "code" : "mL"
          }
        }
      ]
    }
  ]
```

#### DosageRange
With a dosage range a minimum and a maximum amount must be specified.

**Example:** Take min 1 and max 3.

ChMed23A format:
```
{ 
	"t": 3, // Dosage range
	"aMin": 1.0, // Minimum amount of 1 
	"aMax": 3.0 // Maximum amount of 3
}
```

CHMED format:
```json
  "dosage" : [
    {
      "doseAndRate" : [
        {
          "doseRange" : {
            "low" : {
              "value" : 1.0,
              "unit" : "Piece",
              "system" : "http://unitsofmeasure.org",
              "code" : "{Piece}"
            },
            "high" : {
              "value" : 3.0,
              "unit" : "Piece",
              "system" : "http://unitsofmeasure.org",
              "code" : "{Piece}"
            }
          }
        }
      ]
    }
  ]
```

### Sequence Objects
Sequence objects can be used to specify a sequence of posologies that have to be respected in the correct
order and can possibly be repeated.   
Every sequence specifies its duration (including the unit).

Details and examples for the 2 types ([PosologySequence](#posologysequence), [Pause](#pause)) are shown in the following sections.

#### PosologySequence
Wraps any type of PosologyDetail object in order to create a sequence.

**Example:** Take 1 daily for 21 days.

ChMed23A format:
```
{ 
  "t": 1, // Sequence
  "po": { 
    "t": 4, // Cyclic
    "cyDuU": 4, // Unit is day
    "cyDu": 1, // Cycle lasts 1 (day) 
    "tdo": { 
      "t": 1, // Dosage only
      "do": { 
        "t": 1, // Simple dosage 
        "a": 1 // Amount of 1 
      } 
    },
    "tdpc": 1 
  }, 
  "duU": 4, // Unit is day
  "du": 21 // Sequence lasts 21 (days) 
}
```

CHMED format: see example in section [Sequence](#sequence)

#### Pause
Specifies a duration of a break where the medication doesn’t have to be applied.

**Example:** Break of 7 days.

ChMed23A format:
```
{ 
  "t": 2, // Pause
  "duU": 4, // Unit is day
  "du": 7 // Pause lasts 7 (days) 
}
```

CHMED format: see example in section [Sequence](#sequence)

### Application Objects
Application objects specify a dosage that must be applied at certain times; either at a precise time or in a day’s
segment (morning, noon, evening or night).

Details and examples for the 2 possibilities ([ApplicationAtTime](#applicationattime), [ApplicationInSegment](#applicationinsegment)) are shown in the following sections.

#### ApplicationAtTime
Specifies a precise moment in time when a medicament must be applied.

**Example:** Take 1 at 08:00.

ChMed23A format:
```
{ 
  "dt": "08:00:00", // Take at 8 in the morning
  "do": { 
    "t": 1, // Simple dosage
    "a": 1 // Amount of 1 
  } 
}
```

CHMED format: see example in section [Times](#times)

#### ApplicationInSegment
Specifies a day segment (morning, noon, evening or night) when a medicament must be applied.

**Example:** Take 1 in the evening.

ChMed23A format:
```
{ 
  "s": 3, // evening
  "do": { 
    "t": 1, // Simple dosage
    "a": 1 // Amount of 1 
  } 
}
```

CHMED format: see example in section [DaySegments](#daysegments)
