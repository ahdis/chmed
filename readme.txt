java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Patient/MaximaMatter.xml -defn ./validator/igpack.zip -tx n/a
java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Composition/SampleMP.xml -defn ./validator/igpack.zip -tx n/a


java -jar igpublisher/org.hl7.fhir.igpublisher.jar -ig ./chmed16af.json -watch


java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Bundle/chmed16af-bundlemedicationplan-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/ -tx n/a


02  java -jar igpublisher/org.hl7.fhir.igpublisher.jar -ig ./chmed16af.json -spec ./validator/igpack.zip -watch
  503  ls
  504  cd Documents/workspace_ehcmvn
  505  ls
  506  cd eMediplan
  507  ls
  508  cd chmed16af/
  509  ls
  510  java -jar igpublisher/org.hl7.fhir.igpublisher.jar -ig ./chmed16af.json -spec ./validator/igpack.zip
  511  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Bundle/chmed16af-mp-bundle-s01.xml -defn ./validator/igpack.zip -ig ./resources/Profiles -tx n/a
  512  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Bundle/chmed16af-mp-bundle-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/ -tx n/a
  513  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Bundle/chmed16af-mp-bundle-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/ -tx n/a
  514  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Bundle/chmed16af-mp-bundle-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/ -tx n/a
  515  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Bundle/chmed16af-mp-bundle-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/ -tx n/a
  516  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  517  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  518  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  519  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/ImplementationGuide/chmed16af.xml -defn ./validator/igpack.zip
  520  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/ImplementationGuide/chmed16af-ig.xml -defn ./validator/igpack.zip
  521  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/ImplementationGuide/chmed16af-ig.xml -defn ./validator/igpack.zip
  522  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/ImplementationGuide/chmed16af-ig.xml -defn ./validator/igpack.zip
  523  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/ImplementationGuide/chmed16af-ig.xml -defn ./validator/igpack.zip
  524  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/ImplementationGuide/chmed16af-ig.xml -defn ./validator/igpack.zip
  525  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  526  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  527  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  528  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  529  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  530  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  531  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  532  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip
  533  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  534  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  535  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  536  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  537  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-patient.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  538  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  539  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  540  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  541  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  542  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  543  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Practitioner/chmed16af-mp-practitioner-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  544  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Practitioner/chmed16af-mp-practitioner-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  545  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Practitioner/chmed16af-mp-practitioner-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  546  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Practitioner/chmed16af-mp-practitioner-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  547  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/StructureDefinition/chmed16af-mp-practitioner.xml -defn ./validator/igpack.zip
  548  java -jar ./validator/org.hl7.fhir.validator.jar ./resources/Practitioner/chmed16af-mp-practitioner-s01.xml -defn ./validator/igpack.zip -ig ./resources/StructureDefinition/
  549  history

 java -jar igpublisher/org.hl7.fhir.igpublisher.jar -ig ./chmed16af.json -spec ./validator/igpack.zip


http://www.fhir.org/guides/hspc/ValueSet-gestagemeasmethdev.xml.html

      <system value="http://snomed.info/sct"/>
      <concept>
        <code value="21840007"/>
        <display value="date of last menstrual period"/>
      </concept>



<section>
    <title value="Gesundheitsbelange"/>
    <code>
        <coding>
            <system value="http://loinc.org"/>
            <code value="75310-3"/>
            <display value="Health concerns"/>
        </coding>
    </code>
    <entry>
        <reference value="urn:uuid:d5a7160c-e0b3-42af-9212-82a2548f726c"/>
    </entry>
</section>