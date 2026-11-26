Flowplex Project Overview
====================================================

The Project Overview allows you to configure global network settings and manage device communication interfaces. Use the Interface tab to add design components, define interface protocols and port data widths, and set the corresponding NoC data and address widths.


Interface Table (Flowplex)
----------------------------

**Global Network Settings:** Define top-level parameters such as NoC Address Width, NoC Data Width, and the total count of Masters and Slaves. 

**Ingress Devices (First Table):** Configure incoming data sources by assigning Ingress IDs, names, Interface Protocols (e.g., AXI4, SIG_NATIVE), and Port Data Widths.

**Egress Devices (Second Table):** Manage outgoing destinations by specifying Egress IDs, target names, security settings, and communication protocols (e.g., AXI4, AXI3) with corresponding port widths.

**Actions:** Use the toolbar buttons to add or remove interfaces, and filter lists. These configurations are saved automatically.

.. image:: images/flowplex_interfacetable.png
   :alt: Project Overview Interface Tab for Flowplex
   :align: center
   :width: 80%


Connectivty Table (Flowplex)
------------------------------

**Matrix View:** Visualize and manage communication pathways between all configured ingress devices (rows) and egress targets (columns).

**Physical Connectivity:** Use the interactive checkmark grid to enable or disable routing paths between specific initiators (e.g., axinorm_mst, axirm_mst) and targets (e.g., Default_Target_0, axirm_slv1, axinorm_slv2).

**Port Security:** Use to set different type of Port Security per connection.


.. image:: images/flowplex_connectivitytable.png
   :alt: Project Overview Connectivity Tab for Flowplex
   :align: center
   :width: 80%


.. image:: images/flowplex_portsecuritytable.png
   :alt: Project Overview Port Security for Flowplex
   :align: center
   :width: 80%
