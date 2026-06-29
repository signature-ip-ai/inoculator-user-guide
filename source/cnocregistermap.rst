============================================
Register Map (C-NoC)
============================================

The **C-NoC Register Map** provides an interactive, structured hierarchy of all memory-mapped registers driving the Configurable Network-on-Chip fabric. This interface simplifies manual validation, registers exploration during post-silicon bring-up, and diagnostic debugging.

--------------------------------------------------------------------------------

Activation Rules
===================

By default, the Register Map tracking workspace is hidden to optimize browser canvas rendering performance.

.. grid:: 1
   :gutter: 2

   .. grid-item-card:: Unlocking the Register Workspace
      :class-header: bg-light font-weight-bold

      1. Navigate to the primary left-side settings tree and select **C-NoC System Config**.
      2. Toggle the switch or checkbox labeled **Register Map Generation** to the **ON** position.
      3. A new **Register Map** workspace view tab will instantly generate and embed itself inside your active C-NoC project panel tree.

--------------------------------------------------------------------------------

Navigating Register Tab Categories
======================================

The register space partitions memory-mapped registers into specific tabs according to their structural domain roles:

System Tab
----------
Houses global control logic registers responsible for fabric-wide behavior, diagnostics, and data policing.
   
* **Performance Monitor:** Captures throughput metrics, flit counts, and cycle stall rates across individual routers.
* **Recovery & QoS Control:** Handles system error logging, timeout diagnostics, and Quality of Service priority weights.
* **System Control:** Main configuration vectors for resetting or clock-gating localized portions of the fabric.

.. image:: images/register_map_cnoc.png
   :alt: Global system parameters panel in the Register Map workspace
   :align: center
   :width: 85%

Home Node (HN) Tab
------------------
Groups registers that configure, manage, and coordinate transaction ownership, coherence tracking vectors, and home directory slice allocations across the local network.

.. image:: images/register_map_home.png
   :alt: Coherent Home Node configuration space view
   :align: center
   :width: 85%

Subordinate Node (SN) Tab
-------------------------
Groups registers used to calibrate, monitor, and scale secondary memory endpoints or peripheral device adapters operating underneath the home hierarchy.

.. image:: images/register_map_subordinate.png
   :alt: Subordinate node target address space settings panel
   :align: center
   :width: 85%

Request Node (RN) Tab
---------------------
Exposes registers regulating transaction generation, entry scheduling, outstanding tracker allocation boundaries, and priority arbitration weights for master interfaces.

.. image:: images/register_map_requestnode.png
   :alt: Requester tracking register map list layout
   :align: center
   :width: 85%

C2C Bridge Tab
--------------
Exposes protocol interface registers managing chiplet-to-chiplet or die-to-die bridge connections, monitoring link training states, boundary buffering, and translation synchronization metrics.

.. image:: images/register_map_c2cbridge.png
   :alt: Chip-to-Chip layout register tracking inspector layout
   :align: center
   :width: 85%
