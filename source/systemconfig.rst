System Config
==========================================

This feature allows the user to modify the current settings of the project. The following items are the same items set initially when creating a project. To update the settings, user must click ‘System Config’ from action bar.

.. image:: images/nc_noc-system_config1.png
  :alt: nc_noc-system_config1
  :align: center

.. image:: images/nc_noc-system_config2.png
  :alt: nc_noc-system_config2
  :align: center

**Address Width** – The user needs to choose either 32 or 64 as the address width for the NoC project.

**Data Width** – The user needs to choose from 256, 512 or 1024 as the NoC Data Width. (This was previously configurable inside subtopology folder)

**Power Net Name** – This field is for naming Power Net. 

**Power Voltage** – This field is used to set the power voltage for the NoC project. The minimum configuration is 0.5, and the maximum configuration is 1.5.

**Ground Net Name** – This field is for naming Ground Net Name. 

**User Request Width** – This is an input field for AXI4 User Signal where the user are allowed to input any value between 1 to 64. 

**User Data Width** – This is an input field for AXI4 User Signal where the user is allowed to input any value between 1 and 64. 

**User Response Width** - This is an input field for AXI4 User Signal where the user is allowed to input any value between 1 and 64.

**Clock Frequency Validation** – When unchecked, the frequency of each component within the topology must be set individually. When checked, the user does not need to set the frequency for each component.




