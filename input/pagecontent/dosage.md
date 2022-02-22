The model of dosages between CHMED21A and the CHMED21AF (FHIR version) differ sligthly due to the FHIR dosage model.
This has an effect on how to map the different attributes form CHMED21A to CHMED21AF.

### Posology and Dosage

* The CHMED21A model defines for a *Medicament* n *Posology*. The posology of a medicament describes **when**, which **quantity** of the medicament must be applied. Different types of *Posology objects* can be specified to define different dosages.
* In FHIR a *MedicationStatement/MedicationRequest* can have n *Dosages* with one *Timing* (which can have repeating timing defintions).

TBD: If their is a dosage change within the posology in CHMED16A different dosage elements have to be created in FHIR (CHMED20AF).

**Example:**

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
*CHMED21A format for posology*

```json
"extension": [
    {
        "url": "http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed21af-relativetomeal",
        "valueCoding": {
            "code": "307165006",
            "system": "http://snomed.info/sct",
            "display": "Before meal (qualifier value)"
        }
    }
]
```
*FHIR extension for RM (relative to meal) in MedicationStatement/MedicationRequest*

```json
"dosage": [
    {
        "timing": {
            "repeat": {
                "boundsPeriod": {
                    "start": "2021-10-07",
                    "end": "2021-10-07" // TBD
                }
            }
        },
        "asNeededBoolean": false  
    }
]
```
*FHIR format for MedicationStatement.dosage*

```json
"dosageInstruction": [
    {
        "timing": {
            "repeat": {
                "boundsPeriod": { // required
                    "start": "2021-10-07",
                    "end": "2021-10-07" // TBD
                },
                "when": [ // required
                    "MORN",
                    "EVE"
                ]
            }
        },
        "asNeededBoolean": false,
        "doseAndRate": [ // required
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
*FHIR format for MedicationRequest.dosageInstruction*



### Posology Objects

#### Daily
Describes when (morning, noon, evening, night) and how much of a medicament must be taken daily, using a simple structure.

**Example 1-0-1-0:** Take daily 1 in the morning and 1 in the evening.

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
*CHMED21A format for daily posology object*

```json
"dosage": [
    {
        "timing": {
            "repeat": {
                "when": [
                    "MORN",
                    "EVE"
                ]
            }
        },
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
*FHIR format for dosage structured normal*


**Example 1-0-2-0:** Take daily 1 in the morning and 2 in the evening.

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
*CHMED21A format for daily posology object*

```json
"dosage": [
    {
        "sequence": 1,
        "timing": {
            "repeat": {
                "when": [
                    "MORN"
                ]
            }
        },
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
    },
    {
        "sequence": 2,
        "timing": {
            "repeat": {
                "when": [
                    "EVE"
                ]
            }
        },
        "doseAndRate": [
            {
                "doseQuantity": {
                    "value": 2,
                    "unit": "Piece",
                    "system": "http://unitsofmeasure.org",
                    "code": "{Piece}"
                }
            }
        ]
    }
]
```  
*FHIR format for dosage structured split*

##### Timing Event
For the representation of the time of administration according to the 1-1-1-1 scheme, the values MORN-NOON-EVE-NIGHT from the [ValueSet EventTiming](https://www.hl7.org/fhir/valueset-event-timing.html) are highly recommended for the Swiss use (see also [CH EMED](http://fhir.ch/ig/ch-emed/dosage.html#timing-event)).

##### Dose and Rate
The amount of medication administered is represented with SNOMED CT or UCUM codes, which are defined in the [ValueSet UnitCode](http://fhir.ch/ig/ch-emed/ValueSet-UnitCode.html) (see also [CH EMED](http://fhir.ch/ig/ch-emed/dosage.html#dose-and-rate)).

#### Free Text
Describes an unstructured posology consisting of free text.

**Example:** Free text.

```
{ 
	"T": 2, // Free text posology object 
	"Text": "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor." // Free text 
}
```
*CHMED21A format for free text posology object*

```json
"dosage": [
    {
        "text": "Take one pill. Wait one hour. If symptoms persist, take a second pill and wait 30 minutes. If symptoms persist, contact doctor."
    }
]
```
*FHIR format for dosage non-structured*


#### Single
Describes a single application of a medicament. With the single field being a timing object, there are several possibilities to specify when the single application takes place.

**Example:** Take 1.

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
*CHMED21A format for single posology object*

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
*FHIR format for dosage structured normal*


#### Cyclic
Describes the application of a medicament at constant intervals.

**Example:** 1 pill twice a week.

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
*CHMED21A format for cyclic posology object*

```json
"dosage": [
    {
        "timing": {
            "repeat": {
                "frequency": 2,
                "period": 1,
                "periodUnit": "wk"
            }
        },
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
*FHIR format for dosage structured normal*


#### Sequence
Allows to combine multiple posologies with a pause as a sequence.

**Example:** Take daily 1 for 21 days, then take a break of 7 days.

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
									"TDpC": 1 
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
			"U": "TABL" 
		} 
	] 
}
```
*CHMED21A format for sequence posology object*

#### Even/Odd Days
Allows to specify a posology that must be applied on even or odd days.

**Example:** Take 1 on even days, starting 02.01.2021.

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
			"U": "TABL" 
		} 
	] 
}
```
*CHMED21A format for even/odd days posology object*

*********
### Simplified taking times

CHMED16A defines a simplified version of taking times only doses to be taken (morning, noon, evening, night).    
See [EventTiming](https://www.hl7.org/fhir/valueset-event-timing.html), the simplified version x-x-x-x is represented with MORN-NOON-EVE-NIGHT coding values. 

#### Normal Dosing
If the doses are the same, the can be mapped as follows:

1-0-1-0: extract from [example](MedicationStatement-card-medicationstatement-s01-3-beloczok.html)

```xml
	<dosage>
		<timing>
			<repeat>
				<boundsPeriod>
					 <start value="2016-02-10"/>
				</boundsPeriod>
				<when value="MORN"/>
				<when value="EVE"/>
			</repeat>
		</timing>
		<route>
			<coding>
				<system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
				<code value="20053000"/>
				<display value="Oral use"/>
			</coding>
		</route>
		<doseAndRate>
			<doseQuantity>
				<value value="1"/>
				<unit value="Piece"/>
				<system value="http://unitsofmeasure.org"/>
				<code value="{Piece}"/>
			</doseQuantity>
		</doseAndRate>
	</dosage>
```


#### Split Dosing
For 1-0-0.5-0 two dosage elements have to be created, [example](MedicationStatement-card-medicationstatement-s02-3-beloczok.html)

```xml
	<dosage>
		<sequence value="1"/>
		<timing>
		<repeat>
			<boundsPeriod>
				<start value="2016-02-10"/>
			</boundsPeriod>
			<when value="MORN"/>
		</repeat>
		</timing>
		<route>
			<coding>
				<system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
				<code value="20053000"/>
				<display value="Oral use"/>
			</coding>
		</route>
		<doseAndRate>
			<doseQuantity>
				<value value="1"/>
				<unit value="Piece"/>
				<system value="http://unitsofmeasure.org"/>
				<code value="{Piece}"/>
			</doseQuantity>
		</doseAndRate>
	</dosage>
	<dosage>
		<sequence value="2"/>
		<timing>
			<repeat>
				<boundsPeriod>
					<start value="2016-02-10"/>
				</boundsPeriod>
				<when value="EVE"/>
			</repeat>
		</timing>
		<route>
			<coding>
				<system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
				<code value="20053000"/>
				<display value="Oral use"/>
			</coding>
		</route>
		<doseAndRate>
			<doseQuantity>
				<value value="0.5"/>
				<unit value="Piece"/>
				<system value="http://unitsofmeasure.org"/>
				<code value="{Piece}"/>
			</doseQuantity>
		</doseAndRate>
	</dosage>
```

### Taking times
* The [Timing](https://www.hl7.org/fhir/datatypes.html#Timing) elements in FHIR differ in that the unit times can be specified not only in seconds but also in different units see [UnitsOfTime](https://www.hl7.org/fhir/valueset-units-of-time.html).
* The offset (in seconds) of taking time after cycle start in CHMED16A has to represented with timeOfDay.

[Example](MedicationStatement-card-medicationstatement-tt-2-multiple-meronem.html) for a dosage for a product 2 gr, 3 times daily, (08:00-12:00-18:00), iv, for 30 minutes every tuesday for three weeks

```xml
	<dosage>
		<timing>
			<repeat>
				<boundsPeriod>
					<start value="2017-09-05"/> <!-- DtFrom -->
					<end value="2020-09-26"/> <!-- DtTo, inclusive -->
				</boundsPeriod>

				<duration value="1800"/> <!-- DU -->
				<durationUnit value="s"/> <!-- DU -->

				<frequency value="3"/>

				<period value="1"/> <!-- CyDu -->
				<periodUnit value="wk"/> <!-- CyDu -->

				<dayOfWeek value="tue"/> <!-- implied by date, optional -->

				<timeOfDay value="08:00:00"/> <!-- Off, but relative to timeOfDay -->
				<timeOfDay value="12:00:00"/> <!-- Off, but relative to timeOfDay -->
				<timeOfDay value="18:00:00"/> <!-- Off, but relative to timeOfDay -->
			</repeat>
		</timing>
		<route>
			<coding>
				<system value="urn:oid:0.4.0.127.0.16.1.1.2.1"/>
				<code value="20045000"/>
				<display value="Intravenous use"/>
			</coding>
		</route>
		<doseAndRate>
			<doseQuantity>
				<value value="2"/>
				<unit value="gram"/>
				<system value="http://unitsofmeasure.org"/>
				<code value="g"/>
			</doseQuantity>
		</doseAndRate>
	</dosage> 
```

Like in simplified times, if the dosage changes, multiple dosage elements have to be defined: See example [increasing dosage very hour](MedicationStatement-card-medicationstatement-tt-1-diffrates-mabthera.html), [tapered dosing](MedicationStatement-card-medicationstatement-tt-4-spiricort.html).

An [extension](StructureDefinition-chmed20af-dosequantityto.html) has been defined to change the quantity from the starting quantity continously to the final quantity (example increase form 50ml to 200 ml):

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

