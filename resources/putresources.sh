curl -i -X PUT -H "Content-Type:text/xml" --data @./Practioner/c68e2c07-0f9e-4270-a7bf-715c1a72805d.xml http://fhir3.healthintersections.com.au/open/Practitioner/c68e2c07-0f9e-4270-a7bf-715c1a72805d
curl -i -X PUT -H "Content-Type:text/xml" --data @./Patient/fc7ffe93-3263-4c53-bca0-37b5535dd5ad.xml  http://fhir3.healthintersections.com.au/open/Patient/fc7ffe93-3263-4c53-bca0-37b5535dd5ad
curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/1866f2bf-cc83-48e0-9b96-94b9ce3cb359.xml  http://fhir3.healthintersections.com.au/open/MedicationStatement/1866f2bf-cc83-48e0-9b96-94b9ce3cb359
curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/3770f02a-7b38-4305-abdd-b5b932befc00.xml  http://fhir3.healthintersections.com.au/open/MedicationStatement/3770f02a-7b38-4305-abdd-b5b932befc00
curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/a32f2848-fb86-43b3-936c-30ae53b75fb9.xml  http://fhir3.healthintersections.com.au/open/MedicationStatement/a32f2848-fb86-43b3-936c-30ae53b75fb9
curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/aba28134-fcce-4358-8617-19acabbd7717.xml  http://fhir3.healthintersections.com.au/open/MedicationStatement/aba28134-fcce-4358-8617-19acabbd7717
curl -i -X PUT -H "Content-Type:text/xml" --data @./List/9afcb682-5eaa-4b9c-a4cd-07f99ada3f12.xml  http://fhir3.healthintersections.com.au/open/List/9afcb682-5eaa-4b9c-a4cd-07f99ada3f12
curl -i -X PUT -H "Content-Type:text/xml" --data @./Composition/chmed16af-bundlemedicationplan-composition-s01.xml  http://fhir3.healthintersections.com.au/open/Composition/chmed16af-bundlemedicationplan-composition-s01

#curl -i -X PUT -H "Content-Type:text/xml" --data @./Practioner/c68e2c07-0f9e-4270-a7bf-715c1a72805d.xml  http://localhost:8080/baseDstu3/Practitioner/c68e2c07-0f9e-4270-a7bf-715c1a72805d
#curl -i -X PUT -H "Content-Type:text/xml" --data @./Patient/fc7ffe93-3263-4c53-bca0-37b5535dd5ad.xml http://localhost:8080/baseDstu3/Patient/fc7ffe93-3263-4c53-bca0-37b5535dd5ad
#curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/1866f2bf-cc83-48e0-9b96-94b9ce3cb359.xml http://localhost:8080/baseDstu3/MedicationStatement/1866f2bf-cc83-48e0-9b96-94b9ce3cb359
#curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/3770f02a-7b38-4305-abdd-b5b932befc00.xml http://localhost:8080/baseDstu3/MedicationStatement/3770f02a-7b38-4305-abdd-b5b932befc00
#curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/a32f2848-fb86-43b3-936c-30ae53b75fb9.xml http://localhost:8080/baseDstu3/MedicationStatement/a32f2848-fb86-43b3-936c-30ae53b75fb9
#curl -i -X PUT -H "Content-Type:text/xml" --data @./MedicationStatement/aba28134-fcce-4358-8617-19acabbd7717.xml http://localhost:8080/baseDstu3/MedicationStatement/aba28134-fcce-4358-8617-19acabbd7717
#curl -i -X PUT -H "Content-Type:text/xml" --data @./List/9afcb682-5eaa-4b9c-a4cd-07f99ada3f12.xml http://localhost:8080/baseDstu3/List/9afcb682-5eaa-4b9c-a4cd-07f99ada3f12
#curl -i -X PUT -H "Content-Type:text/xml" --data @./Composition/chmed16af-bundlemedicationplan-composition-s01.xml http://localhost:8080/baseDstu3/Composition/chmed16af-bundlemedicationplan-composition-s01
