<?xml version="1.0" encoding="UTF-8"?>
  <!-- PDS4 Schematron for Name Space Id:di  Version:1.0.0.0 - Sun Nov 08 19:02:57 UTC 2026 -->
  <!-- Generated from the PDS4 Information Model Version 1.26.0.0 - System Build 16.1	 -->
  <!-- *** This PDS4 schematron file is an operational deliverable. *** -->
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">

  <sch:title>Schematron using XPath 2.0</sch:title>

  <sch:ns uri="http://www.w3.org/2001/XMLSchema-instance" prefix="xsi"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/pds/v1" prefix="pds"/>
  <sch:ns uri="http://pds.nasa.gov/pds4/mission/di/v1" prefix="di"/>

		   <!-- ================================================ -->
		   <!-- NOTE:  There are two types of schematron rules.  -->
		   <!--        One type includes rules written for       -->
		   <!--        specific situations. The other type are   -->
		   <!--        generated to validate enumerated value    -->
		   <!--        lists. These two types of rules have been -->
		   <!--        merged together in the rules below.       -->
		   <!-- ================================================ -->
  <sch:pattern>
    <sch:rule context="di:Geometry/di:geometry_quality">
      <sch:assert test=". = ('BAD', 'OK')">
        <title>di:Geometry/di:geometry_quality/di:geometry_quality</title>
        The attribute di:Geometry/di:geometry_quality must be equal to one of the following values 'BAD', 'OK'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Imaging/di:image_compression_history">
      <sch:assert test=". = ('Compressed', 'Decompressed', 'Uncompressed')">
        <title>di:Imaging/di:image_compression_history/di:image_compression_history</title>
        The attribute di:Imaging/di:image_compression_history must be equal to one of the following values 'Compressed', 'Decompressed', 'Uncompressed'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Instrument_Parameters/di:instrument_mode">
      <sch:assert test=". = ('Alternating Binned Full Frame', 'Binned Full Frame', 'Binned Sub-Frame 2', 'Binned Sub_Frame 1', 'Diagnostic (shuttered)', 'Diagnostic: One reset frame followed by a read frame', 'Full Frame (shuttered)', 'Memory Check', 'Sub-Frame 1 (shuttered)', 'Sub-Frame 2 (shuttered)', 'Sub-Frame 2 (unshuttered)', 'Sub-Frame 3 (shuttered)', 'Sub-Frame 3 (unshuttered)', 'Sub-Frame 4 (unshuttered), no parallel overclock row', 'Sub-Frame 4 (unshuttered), one parallel overclock row', 'Un-binned Full Frame')">
        <title>di:Instrument_Parameters/di:instrument_mode/di:instrument_mode</title>
        The attribute di:Instrument_Parameters/di:instrument_mode must be equal to one of the following values 'Alternating Binned Full Frame', 'Binned Full Frame', 'Binned Sub-Frame 2', 'Binned Sub_Frame 1', 'Diagnostic (shuttered)', 'Diagnostic: One reset frame followed by a read frame', 'Full Frame (shuttered)', 'Memory Check', 'Sub-Frame 1 (shuttered)', 'Sub-Frame 2 (shuttered)', 'Sub-Frame 2 (unshuttered)', 'Sub-Frame 3 (shuttered)', 'Sub-Frame 3 (unshuttered)', 'Sub-Frame 4 (unshuttered), no parallel overclock row', 'Sub-Frame 4 (unshuttered), one parallel overclock row', 'Un-binned Full Frame'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Instrument_Parameters/di:instrument_mode_mnemonic">
      <sch:assert test=". = ('ALTFF', 'BINFF', 'BINSF1', 'BINSF2', 'DIAG', 'FF', 'FFD', 'MEMCHK', 'SF1', 'SF2N', 'SF2S', 'SF3N', 'SF3S', 'SF4NO', 'SF4O', 'UBFF')">
        <title>di:Instrument_Parameters/di:instrument_mode_mnemonic/di:instrument_mode_mnemonic</title>
        The attribute di:Instrument_Parameters/di:instrument_mode_mnemonic must be equal to one of the following values 'ALTFF', 'BINFF', 'BINSF1', 'BINSF2', 'DIAG', 'FF', 'FFD', 'MEMCHK', 'SF1', 'SF2N', 'SF2S', 'SF3N', 'SF3S', 'SF4NO', 'SF4O', 'UBFF'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Observation_Parameters/di:product_type">
      <sch:assert test=". = ('Edited Data Record', 'Radiance Cleaned', 'Radiance Reversible')">
        <title>di:Observation_Parameters/di:product_type/di:product_type</title>
        The attribute di:Observation_Parameters/di:product_type must be equal to one of the following values 'Edited Data Record', 'Radiance Cleaned', 'Radiance Reversible'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Observation_Parameters/di:spacecraft_processor_id">
      <sch:assert test=". = ('SCU-A', 'SCU-B')">
        <title>di:Observation_Parameters/di:spacecraft_processor_id/di:spacecraft_processor_id</title>
        The attribute di:Observation_Parameters/di:spacecraft_processor_id must be equal to one of the following values 'SCU-A', 'SCU-B'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Spacecraft_Rotation_Velocity_Vector/di:x_axis_rotation">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>di:Spacecraft_Rotation_Velocity_Vector/di:x_axis_rotation/di:x_axis_rotation</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Spacecraft_Rotation_Velocity_Vector/di:y_axis_rotation">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>di:Spacecraft_Rotation_Velocity_Vector/di:y_axis_rotation/di:y_axis_rotation</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Spacecraft_Rotation_Velocity_Vector/di:z_axis_rotation">
      <sch:assert test="@unit = ('deg/day', 'deg/s', 'rad/s')">
        <title>di:Spacecraft_Rotation_Velocity_Vector/di:z_axis_rotation/di:z_axis_rotation</title>
        The attribute @unit must be equal to one of the following values 'deg/day', 'deg/s', 'rad/s'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Temperature_Measurement/di:temperature">
      <sch:assert test="@unit = ('K', 'degC')">
        <title>di:Temperature_Measurement/di:temperature/di:temperature</title>
        The attribute @unit must be equal to one of the following values 'K', 'degC'.</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:rule context="di:Voltage_Measurement/di:voltage">
      <sch:assert test="@unit = ('V', 'mV')">
        <title>di:Voltage_Measurement/di:voltage/di:voltage</title>
        The attribute @unit must be equal to one of the following values 'V', 'mV'.</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
