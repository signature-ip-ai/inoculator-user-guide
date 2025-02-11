Target Configuration
===========================================

Configuring a Target device involves various settings. The Settings tab includes sections for Parameters, Timing, Traffic Behavior, and Security. The Timing section is available only if the 'Disable Frequency Validation' checkbox in the 'Create Project' settings is checked. The Traffic Behavior section is available only if the corresponding checkbox in the 'Create Project' settings is enabled. In this device, user can set Default Slave by selecting ‘Default’ under Bus Protocol. 

.. image:: images/target-default_slave.png
  :alt: target-default_slave
  :align: center

**Device ID** – Device ID “0” is for reserved for Default Slave only. 

**Bus Protocol** – This read-only parameter displays the name "Default", representing the Default Slave

.. image:: images/target-enable_virtual_device.png
  :alt: target-enable_virtual_device
  :align: center


This is a toggle button for enabling or disabling virtual devices. The default setting is disabled. When the user enables this button, adding virtual devices to the specific target becomes possible.

This topic will be discussed in **6. Virtual Devices**. 

.. image:: images/target-parameters1.png
  :alt: target-parameters1
  :align: center

.. image:: images/target-parameters2.png
  :alt: target-parameters2
  :align: center


**Subtopology** – A dropdown list for changing subtopology assigned for the selected target. 
  
**Name** – Label name assigned for selected target. This is an input field where only alphanumeric keys and underscores are allowed.
  
**Device Id** – This ID is unique for each component.

**Bus Protocol** – The selected item here will be assigned as the protocol for the Initiator device. The available selections are AXI, AHB, APB, SIG_NATIVE, SRAM and ‘Default’. ‘Default’ will be unavailable once it was already selected in port ‘E0’. 

**Bus Protocol Version** – The list of versions depends in ‘Bus Protocol’ that has been selected. Please check the table below as reference.

**Bus Variant** – The list of variants for the selected 'Bus Protocol' will be displayed here. Please check the table below as reference. 

**Write Transaction ID Width** – Refers to the number of bits allocated to identify write transactions. 

**Read Transaction ID Width** – Refers to the number of bits used to identify read transaction. 

**Port Data Width** – Refers to the Data Width you will be assigned to the connected port.  Available list will depend on what Bus Protocol was selected. 

**Max Outstanding Writes** – The number of allowed outstanding writes limited by the system’s architecture. 

**Max Outstanding Reads** – The number of allowed outstanding reads limited to help manage the bandwidth. 

**Read Data Delay** – This setting is only available in ‘SRAM’ Bus Protocol. Time interval to set for a read request. User can choose either 1 or 2.

**Channel** – This setting is only available in ‘SRAM’ Bus Protocol. User can choose either 1RW (1 Read/Write) or 1R1W (1 Read 1 Write). 

.. image:: images/target-timing.png
  :alt: target-timing
  :align: center

Timing tab will be displayed if the checkbox for ‘Disable Frequency Validation’ in the 'Create Project' prompt is unchecked. 

**Latency Clock Sync** – When enabled, Frequency will be same as Subtopology clock. When disabled, Frequency needs to be set in MHz. 

**Frequency** – The rate of speed on how a processor can execute instructions. This field will be available if ‘Latency Clock Sync’ is disabled. 


.. image:: images/target-traffic_behavior.png
  :alt: target-traffic_behavior
  :aling: center

**Traffic Behavior** – This column will appear for all bus protocols selected, except for 'SRAM’. 

**Response Speed** - This refers to the measure of how quickly a system will react to a given request. Selections are 'fast' or 'slow. 


.. image:: images/target-security.png
  :alt: target-security
  :align: center

**Device Policy** – Policy or configuration assigned for the connected Initiator device. This will also reflect in Initiator device’s setting. Choose from Passthrough, Programmable (Secure or Non-Secure), Blocked, and Fixed-Secure.
