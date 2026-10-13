.. 2026-10-12, by Anne Raugh

##################################################
Introduction
##################################################

This *User;s Guide* provides a brief overview of the Deep Impact and EPOXI mission
namespace, identified by "DI" or "di:", for those working with data from either
the Deep Impact (DI) primary or EPOXI extended missions.

----

   **Note** *that the Deep Impact/EPOXI legacy data migration is ongoing, with* 
   *labels being designed for each instrument in turn. This namespace is in active* 
   *development and will continue to be so for the forseeable future.* 

----

Data from the primary and extended missions were all produced by the same pipeline
in PDS3 format. They were converted to PDS4 format more than 10 years after the last 
PDS3 data products were archived, with some assistance from scientists who worked
on the original Deep Impact and DI Extended missions.

This guide presents the major features of the namespace.

################################################################
Overview of the Deep Impact and EPOXI Mission Dictionary
################################################################

.. include:: ../intro.md

- **Primary Steward:** Anne Raugh, Small Bodies Node, University of Maryland (@acraugh on Github)
- **Dictionary Repo:** https://github.com/pds-data-dictionaries/ldd-di
- **Namespace Prefix:** di:

Corrections, changes, and additions should be submitted through 
the `PDS LDD Issue Repo <https://github.com/pds-data-dictionaries/PDS4-LDD-Issue-Repo>`_.

##################################################
Organization of Classes and Attributes
##################################################

The Deep Impact/EPOXI dictionary has a single top-level class that must be used to access
any of the DI metadata classes. Below that, there are major subclasses for metadata of
related to various common aspects of the observations (for example, observing geometry, 
spacecraft environment, or observation planning). Calibrated data and data from the 
exoplanet observations have additional classes to provide specific details for those
products.

The following sections describe the major divisions of the Deep Impact/EPOXI
mission namespace, in the order in which they occur in the schema (and thus, labels).

**************************************************
Top-Level Class: <di:Mission_Parameters>
**************************************************

The *<di:Mission_Parameters>* class acts as a wrapper for all other DI classes.
It contains four attributes and three subclasses. 

The sequence of elements within the *<di:Mission_Parameters>* class is:

- :ref:`<di:mission_phase_name><mission-phase-name>`
- :ref:`<di:spacecraft_clock_start><spacecraft-clock-start>`
- :ref:`<di:spacecraft_clock_mid><spacecraft-clock-mid>`
- :ref:`<di:spacecraft_clock_stop><spacecraft-clock-stop>`

The major subclasses of the *<di:DeepImpact_Expoxi_Metadata>* class are:

- :ref:`<di:Observation_Parameters><observation-parameters>`
- :ref:`<di:Instrument_Parameters><instrument-parameters>`
- :ref:`<di:Image_Statistics><image-statistics>`

You can see a complete outline of the namespace under the
:doc:`../detailed/outline` topic.

++++++++++++++++++++++++++++++++++++++++++++++++++
Attributes of <di:Mission_Parameters>
++++++++++++++++++++++++++++++++++++++++++++++++++

.. _mission-phase-name:

<di:mission_phase_name>
  This attribute contains the name of the mission phase as reported by the
  pipeline. This is human-readable. 

.. _spacecraft-clock-start:

<di:spacecraft_clock_start>
  A string representing the onboard clock string at the start of the 
  observations.

.. _spacecraft-clock-mid:

<di:spacecraft_clock_mid>
  A string representing the onboard clock string at the midpoint of the 
  observations.

.. _spacecraft_clock_stop:

<di:spacecraft_clock_stop>
  A string representing the onboard clock string at the end of the 
  observations.

.. _observation-parameters

**************************************************
Subclass: <di:Observation_Parameters>
**************************************************

The *<di:Observation_Parameters>* class provides attributes describing
the intent and circumstances of the observation that produced the data in the
product. As in the PDS common namespace, in the DI dictionary attribute names
are all lowercase; class names are in title case.

This class contains:

- <di:observation_id>
- <di:observation_description>
- <di:mission_activity>
- <di:product_type>
- <di:spacecraft_processor_id>
- <di:sdc_pipeline_file_name>
- <di:Imaging>
- <di:Geometry>

<di:observation_id>, <di:observation_description>, and <di:mission_activity>
  These attributes identify the purpose of the observation and link it to 
  mission logs.
  
<di:product_type>
  This attribute is used to indicate the specific processing level of the associated
  data product. In particular, it identifies reversibly calibrated data as distinct
  from cleaned data for which the processing is not reversible.

<di:spacecraft_processor_id>
  This attributes which of two onboard processors obtained the data.
  
<di:sdc_pipeline_file_name>
  This attribute is provided to help document the provenance of the data as it 
  passed through the Science Data Center.
  
<di:Imaging>
  This subclass contains attributes related to onboard image acquisition.
  
<di:Geometry>
  This subclass contain attributes related to observational geometry that are 
  not included in the Geometry discipline namespace. In particular, it includes
  a vector defining the rotation rate of the spacecraft.
  
**************************************************
Subclass: <di:Instrument_Parameters>
**************************************************

The *<di:Instrument_Parameters>* subclass provides attributes specific to the
instrument commanding and environment during the observation.

This class contains:

- <di:instrument_mode>
- <di:instrument_mode_mnemonic>
- <di:instrument_mode_id>
- <di:Instrument_Temperatures>
- <di:Instrument_Voltages>

<di:instrument_mode>, <di:instrument_mode_mnemonic>, <di:instrument_mode_id>
  These attributes provide the same instrument mode setting information in 
  three different forms. *<di:instrument_mode>* is the mode human-readable
  form.
  
<di:Instrument_Temperatures>
  This class presents a series of temperature readings from sensors in specified
  locations on the spacecraft.
  
<di:Instrument_Voltages>
  This class presents a series of voltage readings from sensors in specified
  locations on the spacecraft.
  
**************************************************
Subclass: <di:Image_Statistics>
**************************************************

This class provides various counts, metrics and conversion constants for the 
image contained within the primary data object.

This class contains:

- <di:bad_pixel_count>
- <di:missing_pixel_count>
- <di:despiked_pixel_count>
- <di:interpolated_pixel_count>
- <di:partial_saturated_pixel_count>
- <di:saturated_pixel_count>
- <di:adc_saturated_pixel_count>
- <di:ultracompressed_pixel_count>
- <di:scaled_maximum>
- <di:scaled_minimum>
- <di:scaled_median>
- <di:scaled_standard_deviation>
- <di:stored_maximum>
- <di:stored_minimum>
- <di:stored_median>
- <di:stored_standard_deviation>
- <di:Conversion_Constants>

<di:\*_pixel_count>
  The *pixel_count* attributes provide literal counts of various types of
  problematic pixels.
  
<di:scaled_\*>
  The *scaled* statistics are calculated by first applying scaling factors and 
  offsets in the data to the pixel values. These differ from the PDS4 attributes
  found in the *<pds:Object_Statistics>* class in that overclock or reference 
  areas that are reported as part of the data array, but are not considered part
  of the image itself, are excluded from the calculation of these statistics.
  
<di:stored_\*>
  The *stored* statistics are calculated from the pixel values as they are stored
  in the image array, *before* any scaling factor or offset is applied. These 
  differ from the PDS4 attributes found in the *<pds:Object_Statistics>* class in 
  that overclock or reference areas that are reported as part of the data array, 
  but are not considered part of the image itself, are excluded from the 
  calculation of these statistics.

<di:Conversion_Constants>
  This subclass only appears in exoplanet observations from the EPOXI mission.
  It provides constants to be used to convert the pixel values from their stored
  units to other units of measure.
  
  