# Dosage

## Introduction

The model of dosages between CHMED16A and the CHMED20AF FHIR version differ sligthly due to the FHIR dosage model.
This has an effect on how to map the different attributes form CHMED16A to CHMED20AF.

## Posology and Dosage

* The CHMED16A model defines for a medication n Posology (the dosage information) and n Taking times (the intake timetable), taking times includes dosage.
* In FHIR a MediationStatement can have n Dosages with one Timing (which can have repeating timing defintions).

If their is a dosage change within the posology in CHMED16A different dosage elements have to be created in FHIR (CHMED20AF).

## Simplified taking times

CHMED16A defines a simplified version of taking times only doses to be taken (morning, midday, evening, night). If the doses
are the same, the can be mapped as follows:

1-0-1-0: extract from [example](MedicationStatement-chmed20af-card-medicationstatement-s01-3.html)

```xml
	<dosage>
		<timing>
			<repeat>
				<boundsPeriod>
					 <start value="2016-02-10"/>
				</boundsPeriod>
				<when value="PCM"/>
				<when value="PCV"/>
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
				<unit value="Stk"/>
				<system value="http://unitsofmeasure.org"/>
				<code value="{Piece}"/>
			</doseQuantity>
		</doseAndRate>
	</dosage>
```
See [TimingEvent](https://www.hl7.org/fhir/v3/TimingEvent/cs.html), the simplified version x-x-x-x is represented with PCM - PCD- PCV and HS coding values. 

For 1-0-0.5-0 two dosage elements have to be created, [example](MedicationStatement-chmed20af-card-medicationstatement-s02-3.html)

## Taking times
* The [Timing](https://www.hl7.org/fhir/datatypes.html#Timing)) elements in FHIR differ in that the unit times can be specified not only in seconds but also in different units see [UnitsOfTime](https://www.hl7.org/fhir/valueset-units-of-time.html).
* The offset (in seconds) of taking time after cycle start in CHMED16A has to represented with timeOfDay.

[Example](MedicationStatement-chmed20af-card-medicationstatement-tt-2-multiple-meronem.html) for a dosage for a product 2 gr, 3 times daily, (08:00-12:00-18:00), iv, for 30 minutes every tuesday for three weeks

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
				<unit value="g"/>
				<system value="http://unitsofmeasure.org"/>
				<code value="g"/>
			</doseQuantity>
		</doseAndRate>
	</dosage> 
```

Like in simplified times, if the dosage changes, multiple dosage elements have to be defined: See example [increasing dosage very hour](MedicationStatement-chmed20af-card-medicationstatement-tt-1-diffrates-mathbera.html), [tapered dosing](MedicationStatement-chmed20af-card-medicationstatement-tt-4-spiricort.html).

An [extension](StructureDefinition-chmed20af-dosequantityto.html) has been defined to change the quantity from the starting quantity continously to the final quantity (example increase form 50ml to 200 ml):

```xml
	<fhir:doseQuantity>
		<fhir:extension url="http://chmed20af.emediplan.ch/fhir/StructureDefinition/chmed20af-dosequantityto">
			<fhir:valueQuantity>
				<fhir:value value="200"/>
				<fhir:unit value="ml"/>
				<fhir:system value="http://unitsofmeasure.org"/>
				<fhir:code value="mL"/>
			</fhir:valueQuantity>
		</fhir:extension>
		<fhir:value value="50"/>
		<fhir:unit value="ml"/>
		<fhir:system value="http://unitsofmeasure.org"/>
		<fhir:code value="mL"/>
	</fhir:doseQuantity>
```

