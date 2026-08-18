====================================================
NC-NoC Initiator Device Configuration
====================================================

An **Initiator** element represents a master intellectual property (IP) core—such as a CPU cluster, GPU engine, or DMA controller—that originates read and write transaction requests across the Network-on-Chip (NoC) interconnect fabric. 

--------------------------------------------------------------------------------

Multi-Tab Parameter Configuration Interface
===============================================

Configure your target Initiator node by selecting its contextual tabs within the device properties inspector panel.

.. tab-set::

   .. tab-item:: 📋 Core Parameters

      The **Parameters** workspace governs protocol mappings, data bus geometries, buffer depths, and tracking parameters.

      .. image:: images/initiator-parameters9.png
         :alt: iNoCulator Initiator Device Core Parameter inspector configuration panel
         :align: center
         :width: 60%

      * - **Name**
        - Unique text string to label the selected master interface. Input processor accepts **alphanumeric characters and underscores only** (no spaces or special symbols).
      * - **Device ID**
        - System-assigned, read-only unique hexadecimal node identifier used by the global validation and auto-routing engine.
      * - **Bus Protocol**
        - Sets the functional transport layer standard for this node. Selecting a protocol dynamically alters dependent width and variant fields. Supported options: ``AXI``, ``AHB``, ``APB``, or ``SIG_NATIVE``.
      * - **Bus Protocol Version & Variant**
        - References the structural version standard and sub-profile properties of your selected bus architecture (see matrix below for structural limits).
      * - **Write / Read Transaction ID Width**
        - Determines the parallel bit width allocated to trace out-of-order split transactions. Hidden for ``AXI4-Lite`` profiles.
      * - **Port Data Width**
        - Configures the parallel bit width of the local socket interface. Restricted by your platform-wide global *System Configuration Data Width*. Hidden for native signal wrappers (``SIG_NATIVE``).
      * - **Flit Write Packet Size / Read Buffer Size**
        - Defines transaction segmentation. Measures the maximum beats packed per independent physical flit structure.
      * - **Outstanding Writes / Reads**
        - Sets the hard architectural pipeline concurrency limit to govern backpressure threshold rules.
      * - **User Request / Data Width**
        - Specialized auxiliary signal bus parameters available exclusively for ``AHB`` or ``APB`` protocols. Selectable as ``16`` or ``32`` bits.
      * - **Read / Write Reorder Buffer Size**
        - Sets deep transaction queuing bounds. Evaluated across all interfaces except ``SIG_NATIVE``. 
        
        .. note::
           **Validation Pre-requisite:** Reorder buffers are structurally cross-checked once a target terminal node enables the *Address Interleaving Merger*.
      * - **Write Data Buffer & Buffer Depth**
        - Toggles an independent FIFO container loop to smooth over network routing stalls. Supports explicit depths from ``2`` to ``256`` entries.
      * - **Number of Virtual Channel**
        - Configures the number of virtual channels allocated for the initiator port to manage concurrent multi-request streams and prevent protocol deadlock.
        - **Applicability:** Applicable **only** to **AXI4 (full)** ingress ports.
        - **Validation Rule:** The value must not exceed the configured **"Outstanding Reads"** limit. Any value greater than Outstanding Reads or outside the allowed powers of 2 will trigger a topology validation error.
        - **Range of Values:** Powers of 2 up to a maximum of **16** (``[0, 1, 2, 4, 8, 16]``).

   .. tab-item:: ⏱️ Timing Domain Setup

      .. image:: images/initiator-timing4.png
         :alt: Initiator node clock domain and timing constraint options panel
         :align: center
         :width: 60%

      .. note::
         **Interface Visibility Condition:** This clock domain workspace panel unlocks if and only if the **Disable Frequency Validation** parameter checkbox is explicitly activated during the root *Create Project* setup phase.

      * - **Use Subtopology Clock**
        - **Enabled by default.** Synchronizes the local initiator socket boundary straight to its parent subtopology frequency domain layout.
      * - **Frequency**
        - Sets the active target speed in Megahertz (``MHz``). Becomes interactive only when *Use Subtopology Clock* is disabled, permitting localized asynchronous clock-domain crossing (CDC) isolation.

   .. tab-item:: 🔒 Security Policies

      .. image:: images/initiator-security3.png
         :alt: Security token mapping rules and device target access controls interface
         :align: center
         :width: 80%

      * - **Security Policy**
        - Sets root system access tiering rules. Select from:
          
          * ``Passthrough`` — Transparent data routing.
          * ``Programmable`` — Dynamically register-controlled via authorization tokens.
          * ``Blocked`` — Hardwired logic isolation.
          * ``Fixed-Secure`` — Permanent high-integrity zone containment.
      * - **Interface Security**
        - Contextual field active when root policy is *Programmable*. Dictates the default starting state as either ``Secure`` or ``Non-Secure``.
      * - **Device Policies**
        - Defines explicit security access expectations mapped against bound downstream destination hardware slaves. Changes here propagate to your destination *Target Configuration* blocks.

   .. tab-item:: 🔀 Traffic Regulation

      .. image:: images/initiator-others4.png
         :alt: Traffic behavior shaping policies and secondary options configuration panel
         :align: center
         :width: 60%

      .. note::
         **Interface Visibility Condition:** This traffic shaping section lights up if the corresponding performance profiling configuration flags are checked in your active *Project Configuration* properties.

      * - **Traffic Regulation Policy 1 & 2**
        - Imposes behavioral rate shaping on transaction streams. Options include: ``Disabled``, ``Read Only``, ``Write Only``, ``Read-Write Independent``, or ``Read-Write Combined``.

--------------------------------------------------------------------------------

Protocol & Interface Compatibility Matrix
=============================================

The application architecture limits versioning properties based on your selected transaction standard:

.. list-table:: Supported Protocol Frameworks
   :widths: 30 30 40
   :header-rows: 1
   :stub-columns: 1

   * - Selected Bus Protocol
     - Protocol Version Engine
     - Accessible Bus Variants
   * - **AXI**
     - 3
     - *Not Applicable (N/A)*
   * - **AXI**
     - 4
     - Full, Lite, Stream
   * - **AHB**
     - 3
     - Lite
   * - **AHB**
     - 5
     - *Not Applicable (N/A)*
   * - **APB**
     - 3
     - *Not Applicable (N/A)*
   * - **APB**
     - 5
     - *Not Applicable (N/A)*
   * - **SIG_NATIVE**
     - *Not Applicable (N/A)*
     - *Not Applicable (N/A)*
