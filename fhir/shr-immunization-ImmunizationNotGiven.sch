<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Immunization
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Immunization</sch:title>
    <sch:rule context="f:Immunization">
<<<<<<< HEAD
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-SpecificType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-SpecificType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTime-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
=======
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-NotPerformedContext-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-NotPerformedContext-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-NotPerformedContext-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-NotPerformedContext-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-BodySite-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-BodySite-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-medication-RouteIntoBody-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-medication-RouteIntoBody-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-medication-DoseAmount-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-medication-DoseAmount-extension': maximum cardinality of 'extension' is 1</sch:assert>
>>>>>>> 92b20c342... 12/19/17 updates
      <sch:assert test="count(f:site) &lt;= 0">site: maximum cardinality of 'site' is 0</sch:assert>
      <sch:assert test="count(f:route) &lt;= 0">route: maximum cardinality of 'route' is 0</sch:assert>
      <sch:assert test="count(f:doseQuantity) &lt;= 0">doseQuantity: maximum cardinality of 'doseQuantity' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization</sch:title>
    <sch:rule context="f:Immunization">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
      <sch:assert test="not(f:notGiven/@value=false() and exists(f:explanation/f:reasonNotGiven))">If immunization was administered (notGiven=false) then explanation.reasonNotGiven SHALL be absent.</sch:assert>
      <sch:assert test="not(f:notGiven/@value=true() and (count(f:reaction) &gt; 0 or exists(f:explanation/f:reason)))">If immunization was not administered (notGiven=true) then there SHALL be no reaction nor explanation.reason present</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization.practitioner</sch:title>
    <sch:rule context="f:Immunization/f:practitioner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:explanation</sch:title>
    <sch:rule context="f:Immunization/f:explanation">
      <sch:assert test="count(f:reasonNotGiven) &lt;= 1">reasonNotGiven: maximum cardinality of 'reasonNotGiven' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization.explanation</sch:title>
    <sch:rule context="f:Immunization/f:explanation">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization.reaction</sch:title>
    <sch:rule context="f:Immunization/f:reaction">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization.vaccinationProtocol</sch:title>
    <sch:rule context="f:Immunization/f:vaccinationProtocol">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
