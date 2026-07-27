========================================================
NC-NoC Address Interleaving
========================================================

Address Interleaving is a system-level feature that allows memory ranges to be split and distributed across multiple target (slave) ports. Instead of assigning one continuous block of memory to a single target, traffic is sent in alternating segments. This optimizes total system bandwidth and balances traffic loads across the network-on-chip fabric.

--------------------------------------------------------------------------------

Phase 1: System Configuration
=================================

Before configuring specific hardware endpoints, interleaving must be unlocked globally within the **System Config** dashboard.

.. list-table:: Global Interleaving Parameter
   :widths: 25 25 50
   :header-rows: 1

   * - Parameter
     - Allowed Values
     - Default Value
   * - **Address Interleaving**
     - ``0`` (Off), ``1`` (On)
     - ``0`` (Off)

.. note::
   Enabling this parameter globally is a strict prerequisite. If set to ``0``, all downstream Target Address Interleaving settings in the Address Map remain locked.

--------------------------------------------------------------------------------

Phase 2: Target Address Interleaving
=========================================

Once globally enabled, individual slave ports can be configured for interleaved reception. Activating this feature triggers cross-validation checks across multiple systemic parameters, including: NoC Data Width, Port Data Width, Read/Write Reorder Buffer Sizes, and Flit Buffer Sizes.

Parameters
----------

.. list-table:: Target Interleaving Control Space
   :widths: 25 35 40
   :header-rows: 1

   * - Parameter
     - Valid Range / Options
     - Functional Default
   * - **Enable Address Interleaving**
     - ``0`` (Off), ``1`` (On)
     - ``0``
   * - **Minimum Transaction Size**
     - ``16``, ``32``, ``64``, ``128``, ``256``, ``512``, ``1024``, ``2048``
     - ``128``

--------------------------------------------------------------------------------

Critical Architectural Dependencies
========================================

When a target port has **Address Interleaving** set to ``1`` (ON), the structural topology compiler strictly enforces the following architectural rules:

A. Initiator Buffer Bounds
--------------------------
The configured **Minimum Transaction Size** must be less than or equal to both core initiator flit metric constraints. If multiple distinct initiators route to this target, the compiler uses the smallest available value:

.. math::
   
   \begin{aligned}
   \text{Minimum Transaction Size} &\le \text{Initiator Flit Read Buffer Size} \\
   \text{Minimum Transaction Size} &\le \text{Initiator Flit Write Packet Size}
   \end{aligned}


B. Rate Matching Boundary Condition
-----------------------------------
If the main network width differs from the target slave width ($NOC\_DATA\_WIDTH \neq SLV\_DATA\_WIDTH$), the **Minimum Transaction Size** must scale to protect the bus rate matching logic:

.. math::

   \begin{aligned}
   \text{Minimum Transaction Size} &\le \frac{256}{\left(\frac{\text{NOC\_DATA\_WIDTH}}{\text{SLV\_DATA\_WIDTH}}\right)} \\[10pt]



C. Reorder Buffer Sizing Minimums
---------------------------------
To prevent network head-of-line blocking during segment split transactions, the tracking reorder structures must meet or exceed these depth thresholds:

.. math::

   \begin{aligned}
   \text{Write Reorder Buffer Size} &\ge \frac{4096}{\text{Minimum Transaction Size}} \\[10pt]
   \text{Read Reorder Buffer Size} &\ge \frac{4096}{\text{Minimum Transaction Size}}
   \end{aligned}

.. hint::
   If target slave endpoints within the same interleaved network specify varying segment sizes, the compiler selects the absolute smallest size value to run these validation sweeps.

--------------------------------------------------------------------------------

Address Interleaving Merger
==============================

.. warning::
   When the global **NoC Data Width** is provisioned at exactly ``1024`` and the matching **Target Port Data Width** is specified as ``32``, the **Address Interleaving Merger** toggle button is automatically **disabled** and bypassed by the hardware compilation engine.
