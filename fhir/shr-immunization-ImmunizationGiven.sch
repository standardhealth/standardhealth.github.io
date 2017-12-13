<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile US  Core Immunization Profile
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Immunization</sch:title>
    <sch:rule context="f:Immunization">
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-PerformedContext-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-PerformedContext-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-PerformedContext-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-PerformedContext-extension': maximum cardinality of 'extension' is 1</sch:assert>
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
    <sch:title>f:Immunization/f:extension</sch:title>
    <sch:rule context="f:Immunization/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTimeOrPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-Method-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedRequest-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-RelatedPlan-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:extension/f:extension</sch:title>
    <sch:rule context="f:Immunization/f:extension/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Party-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-action-ParticipationPeriod-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OnBehalfOf-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Immunization/f:extension/f:extension/f:extension</sch:title>
    <sch:rule context="f:Immunization/f:extension/f:extension/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-RelatedEncounter-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Author-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-Informant-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-entity-Type-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization.vaccineCode</sch:title>
    <sch:rule context="f:Immunization/f:vaccineCode">
      <sch:assert test="not(exists(f:coding/f:system[@value='http://hl7.org/fhir/sid/ndc']))">SHOULD have a translation to the NDC value set</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Immunization.practitioner</sch:title>
    <sch:rule context="f:Immunization/f:practitioner">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
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
