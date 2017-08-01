<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MedicationRequest
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-SpecificType-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-SpecificType-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTime-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-OccurrenceTime-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-PatientInstructions-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-base-PatientInstructions-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:reasonCode) &lt;= 1">reasonCode: maximum cardinality of 'reasonCode' is 1</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
      <sch:assert test="count(f:dosageInstruction) &lt;= 1">dosageInstruction: maximum cardinality of 'dosageInstruction' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest</sch:title>
    <sch:rule context="f:MedicationRequest">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources</sch:assert>
      <sch:assert test="not(parent::f:contained and f:text)">If the resource is contained in another resource, it SHALL NOT contain any narrative</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated</sch:assert>
      <sch:assert test="not(exists(for $id in f:contained/*/@id return $id[not(ancestor::f:contained/parent::*/descendant::f:reference/@value=concat('#', $id))]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:modifierExtension</sch:title>
    <sch:rule context="f:MedicationRequest/f:modifierExtension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-Reason-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-Reason-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension']) &gt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/primitive-boolean-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-Reason-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-Reason-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 0">value[x]: maximum cardinality of 'value[x]' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:modifierExtension/f:extension</sch:title>
    <sch:rule context="f:MedicationRequest/f:modifierExtension/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.requester</sch:title>
    <sch:rule context="f:MedicationRequest/f:requester">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="contains(f:agent/f:reference/@value, '/Practitioner/') or contains(f:agent/f:reference/@value, '/Device/') or not(exists(f:onBehalfOf))">onBehalfOf can only be specified if agent is practitioner or device</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:note</sch:title>
    <sch:rule context="f:MedicationRequest/f:note">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:author[x]) &lt;= 1">author[x]: maximum cardinality of 'author[x]' is 1</sch:assert>
      <sch:assert test="count(f:time) &lt;= 1">time: maximum cardinality of 'time' is 1</sch:assert>
      <sch:assert test="count(f:text) &gt;= 1">text: minimum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:MedicationRequest/f:dosageInstruction</sch:title>
    <sch:rule context="f:MedicationRequest/f:dosageInstruction">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:sequence) &lt;= 1">sequence: maximum cardinality of 'sequence' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
      <sch:assert test="count(f:patientInstruction) &lt;= 1">patientInstruction: maximum cardinality of 'patientInstruction' is 1</sch:assert>
      <sch:assert test="count(f:timing) &lt;= 1">timing: maximum cardinality of 'timing' is 1</sch:assert>
      <sch:assert test="count(f:asNeeded[x]) &lt;= 1">asNeeded[x]: maximum cardinality of 'asNeeded[x]' is 1</sch:assert>
      <sch:assert test="count(f:site) &lt;= 1">site: maximum cardinality of 'site' is 1</sch:assert>
      <sch:assert test="count(f:route) &lt;= 1">route: maximum cardinality of 'route' is 1</sch:assert>
      <sch:assert test="count(f:method) &lt;= 1">method: maximum cardinality of 'method' is 1</sch:assert>
      <sch:assert test="count(f:dose[x]) &lt;= 1">dose[x]: maximum cardinality of 'dose[x]' is 1</sch:assert>
      <sch:assert test="count(f:maxDosePerPeriod) &lt;= 1">maxDosePerPeriod: maximum cardinality of 'maxDosePerPeriod' is 1</sch:assert>
      <sch:assert test="count(f:maxDosePerAdministration) &lt;= 1">maxDosePerAdministration: maximum cardinality of 'maxDosePerAdministration' is 1</sch:assert>
      <sch:assert test="count(f:maxDosePerLifetime) &lt;= 1">maxDosePerLifetime: maximum cardinality of 'maxDosePerLifetime' is 1</sch:assert>
      <sch:assert test="count(f:rate[x]) &lt;= 1">rate[x]: maximum cardinality of 'rate[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.dispenseRequest</sch:title>
    <sch:rule context="f:MedicationRequest/f:dispenseRequest">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>MedicationRequest.substitution</sch:title>
    <sch:rule context="f:MedicationRequest/f:substitution">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
