===================================================
NC-NoC Router Configuration
===================================================

Configuring a network-on-chip (NoC) router requires defining its subtopology anchors, power domains, pipeline stage profiles, and static routing table mappings. To modify a router instance, click directly on the target node within the visual floorplan canvas grid to populate the configuration inspector pane.

--------------------------------------------------------------------------------

Router Configuration Tabs
==============================

The configuration inspector splits localized router parameters across three dedicated contextual viewports:

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Tab 1: Global Properties & Power Context
      :class-header: bg-light font-weight-bold

      Defines structural node naming conventions, active hardware subtopology bindings, and specific voltage domain configurations.
      
      .. image:: images/router_settings4.png
         :alt: Global settings pane for a selected router component showing identification and power fields
         :align: center
         :width: 60%

   .. grid-item-card:: Tab 2: Crossbar Routing Table
      :class-header: bg-light font-weight-bold

      Exposes target packet routing rules across the local switch fabric. The interface filters destination ports dynamically based on node-to-node physical reachability limits.
      
      .. image:: images/router_routing_table.png
         :alt: Structural routing table spreadsheet showing interconnect reachability paths
         :align: center
         :width: 60%

   .. grid-item-card:: Tab 3: Port Pipeline Stages
      :class-header: bg-light font-weight-bold

      Configures internal structural register slices to alter timing and timing slack attributes across physical boundary crossings.
      
      .. image:: images/router_ports.png
         :alt: Dedicated ports tab mapping pipeline stage attributes across attached bus protocols
         :align: center
         :width: 60%

--------------------------------------------------------------------------------

Protocol Pipeline Stage Reference Metrics
=============================================

Pipeline stage distributions vary by protocol class to match standard bus timing and buffer requirements across structural clock crossings:

.. list-table:: Default Protocol Pipeline Stages
   :widths: 40 20 40
   :header-rows: 1

   * - Connected Device / Interface Type
     - Default Stages
     - Pipeline Operational Context
   * - **AXI Devices**
     - ``1``
     - Mandatory internal decoupling stage for high-frequency channel buffering.
   * - **Egress Link, AHB, APB, SRAM**
     - ``0``
     - Employs zero-cycle pass-through logic to minimize point-to-point transaction latency.
   * - **SEC, Ingress Link, SIG-NATIVE**
     - *N/A*
     - Pass-through or dedicated logic primitives that do not expose programmable pipeline stages.

--------------------------------------------------------------------------------

Node Parameter Specifications
=================================

The properties panel exposes the following precise parameters for fine-tuning router behavior:

Subtopology
   A dropdown selection tool used to swap out or reassign the specific architectural subtopology assigned to this local router. Options match available groupings configured within the macro topology editor.

Device ID
   An uneditable, globally unique system-assigned hexadecimal hash identifier utilized to tag the instance during HDL generation.

Name
   The custom alphanumeric string label assigned to the router instance. The text input wrapper restricts inputs strictly to standard alphanumeric characters and underscores (``_``).

Power Management
   A binary hardware feature flag used to incorporate or strip power gating cells from the synthesized router block.

Use Subtopology Power Domain
   When enabled, the node forces compliance with the voltage constraints of its parent subtopology layout. Disabling this flag unlocks individual local control overrides.

Power Voltage
   Specifies the operating voltage parameter. When decoupled from the subtopology power domain, engineers can type a distinct local voltage level directly into this field to test uneven power distribution schemes.
