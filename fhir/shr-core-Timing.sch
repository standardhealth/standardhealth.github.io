<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Timing
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Timing</sch:title>
    <sch:rule context="f:Timing">
      <sch:assert test="count(f:extension[@url = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-RecurrenceRange-extension']) &lt;= 1">extension with URL = 'http://standardhealthrecord.org/fhir/StructureDefinition/shr-core-RecurrenceRange-extension': maximum cardinality of 'extension' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Timing</sch:title>
    <sch:rule context="f:Timing">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Timing/f:repeat</sch:title>
    <sch:rule context="f:Timing/f:repeat">
      <sch:assert test="count(f:periodMax) &lt;= 0">periodMax: maximum cardinality of 'periodMax' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Timing.repeat</sch:title>
    <sch:rule context="f:Timing/f:repeat">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children</sch:assert>
      <sch:assert test="not(exists(f:offset)) or exists(f:when)">If there's an offset, there must be a when (and not C, CM, CD, CV)</sch:assert>
      <sch:assert test="f:period/@value &gt;= 0 or not(f:period/@value)">period SHALL be a non-negative value</sch:assert>
      <sch:assert test="not(exists(f:periodMax)) or exists(f:period)">If there's a periodMax, there must be a period</sch:assert>
      <sch:assert test="not(exists(f:durationMax)) or exists(f:duration)">If there's a durationMax, there must be a duration</sch:assert>
      <sch:assert test="not(exists(f:countMax)) or exists(f:count)">If there's a countMax, there must be a count</sch:assert>
      <sch:assert test="not(exists(f:duration)) or exists(f:durationUnit)">if there's a duration, there needs to be duration units</sch:assert>
      <sch:assert test="not(exists(f:timeOfDay)) or not(exists(f:when))">If there's a timeOfDay, there cannot be be a when, or vice versa</sch:assert>
      <sch:assert test="not(exists(f:period)) or exists(f:periodUnit)">if there's a period, there needs to be period units</sch:assert>
      <sch:assert test="f:duration/@value &gt;= 0 or not(f:duration/@value)">duration SHALL be a non-negative value</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
