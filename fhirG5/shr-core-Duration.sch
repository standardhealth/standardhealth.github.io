<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Duration
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Duration</sch:title>
    <sch:rule context="f:Duration">
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>Duration</sch:title>
    <sch:rule context="f:Duration">
      <sch:assert test="not(exists(f:code)) or exists(f:system)">If a code for the unit is present, the system SHALL also be present</sch:assert>
      <sch:assert test="(f:code or not(f:value)) and (not(exists(f:system)) or f:system/@value='http://unitsofmeasure.org')">There SHALL be a code if there is a value and it SHALL be an expression of time.  If system is present, it SHALL be UCUM.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
