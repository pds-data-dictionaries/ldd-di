Deep Impact/EPOXI Mission Namespace Outline
##################################################

*<di:Mission_Parameters>* is the public entry point to the Deep Impact/EPOXI Mission 
namespace. This class contains all other DI/EPOXI classes and must be included to gain
access to them. Below is a summary outline of all classes and attributes 
currently available in the DI mission dictionary, in the order in which they 
would appear in a label if every single one was used. 

Note that in real labels it is possible that not every single mission class and 
attribute will be found. Some attributes were not used in the primary mission, 
some are only applicable to exoplanet observations, etc. The point of this outline
is primarily to catalog what is present and show the required ordering within classes
when they are included in a label.

::

  <di:Mission_Parameters>
      <di:mission_phase_name>9P Encounter</di:mission_phase_name>   <!-- msn:mission_phase_name -->
      <di:spacecraft_clock_start>1/0168249634.240</di:spacecraft_clock_start>
      <di:spacecraft_clock_mid>1/0168249644.240</di:spacecraft_clock_mid>
      <di:spacecraft_clock_stop>1/0168249654.240</di:spacecraft_clock_stop>

      <di:Observation_Parameters>
          <di:observation_id/>
          <di:observation_description/>
          <di:mission_activity/>
          <di:product_type/>
          <di:spacecraft_processor_id/>
          <di:sdc_pipeline_file_name/>
                
          <di:Imaging>
              <di:image_number/>
              <di:commanded_image_count/>
              <di:image_compression_history/>

          <di:Geometry>
              <di:geometry_quality/>
              <di:Spacecraft_Rotation_Velocity_Vector>
                  <di:x_axis_rotation unit="rad/s"/>
                  <di:y_axis_rotation unit="rad/s"/>
                  <di:z_axis_rotation unit="rad/s"/>
 
      <di:Instrument_Parameters>
          <di:instrument_mode/>
          <di:instrument_mode_mnemonic/>
          <di:instrument_mode_id/> 
                
          <di:Instrument_Temperatures>
              <di:Temperature_Measurement>
                  <di:sensor_location/>
                  <di:temperature unit="K"/>
              <di:Temperature_Measurement>
              ...

          <di:Instrument_Voltages>
              <di:Voltage_Measurement>
                  <di:sensor_location/>
                  <di:voltage unit="V"/>
              <di:Voltage_Measurement>
              ...

      <di:Image_Statistics>
          <di:bad_pixel_count/>
          <di:missing_pixel_count/>
          <di:despiked_pixel_count/>
          <di:interpolated_pixel_count/>
          <di:partial_saturated_pixel_count/>
          <di:saturated_pixel_count/>
          <di:adc_saturated_pixel_count/>
          <di:ultracompressed_pixel_count/>   

          <di:scaled_maximum/>  
          <di:scaled_minimum/>
          <di:scaled_median/>
          <di:scaled_standard_deviation/>

          <di:stored_maximum/>
          <di:stored_minimum/>
          <di:stored_median/>
          <di:stored_standard_deviation/>

          <di:Conversion_Constants>
              <di:data_to_calibrated_dn_multiplier/> 
              <di:data_to_ioverf_multiplier/>
              <di:data_to_radiance_multiplier/>
