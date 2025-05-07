Router Configuration 
=============================================

Configuring a router includes setting up the power and routing table. To start editing the router settings, the user must click on the router in the grid.

.. image:: images/router_settings3.png
  :alt: router_settings
  :align: center


**Subtopology** – A dropdown list allows users to change the subtopology assigned to the selected Router. This dropdown can be modified and reassigned to another available subtopology based on the topology configuration.

**Device ID** - This ID is unique for each component

**Name** – Label name assigned for selected router. This is an input field where only alphanumeric keys and underscores are allowed. 

**Power Management** – Enabling or disabling power management in a specific router. 

**Use Subtopology Power Domain** – When enabled, the selected router will follow the power domain of the subtopology. If disabled, the power voltage of the selected router must be configured manually.

**Power Voltage** - This parameter displays the current project's Power Voltage. It will only differ for a specific router when ‘Use Subtopology Power Domain’ is disabled and the user has configured a different Power Voltage for the selected router. 

**Routing Table** – Manual configuration of connections between ports of devices. The content of this table depends on the components added to the topology.
