.. _flowplexsimconfig:

=================
SIM Configuration
=================
 
A **Slave Interface Module (SIM)** sits between an egress port and a Slave.
It converts fabric packets back into the Slave's bus protocol. Each Slave has
its own SIM, for example ``Ex0`` → ``SIM_0`` → ``S0``.
 
Open the SIM settings
=====================
 
1. Open the project and select the **Design** tab.
2. Scroll or pan the canvas to the right side, or collapse the right panel,
   so that the SIM blocks are visible.
3. Click a SIM block, for example ``SIM_0``.
4. The right panel shows **Edit SIM [S0]**, where ``S0`` is the Slave
   attached to the SIM.
5. Set the **PROTOCOL** and the port parameters described below.
 
.. tip::
 
   Hover over a parameter name to see a description of it. Several SIM
   parameters have detailed tooltips.
 
Protocol
========
 
**PROTOCOL** sets the bus protocol of the Slave.
 
Available values:
 
* AXI4
* AXI4 Lite
* AXI4 Stream
* AXI3
* AHB5
* AHB3
* APB5
* APB3
* SRAM
* ROM
 
.. note::
 
   SRAM and ROM are available for SIMs only. The parameter list depends on
   the selected protocol. The table below shows the parameters for **AXI4**.
 
Port Parameters (AXI4)
======================
 
.. list-table::
   :header-rows: 1
   :widths: 28 42 10 20
 
   * - Parameter
     - Description
     - Default
     - Allowed values
   * - ``DEV_DATA_WIDTH``
     - Port data width, in bits.
     - 256
     - 32, 64, 128, 256 (512 and 1024 are unavailable)
   * - ``AXI_WID_WIDTH``
     - AXI write ID width.
     - 8
     - 1 – 8
   * - ``AXI_RID_WIDTH``
     - AXI read ID width.
     - 8
     - 1 – 8
   * - ``IS_SAME_CLK``
     - **On** – the port clock is the same as the NoC fabric clock
       (synchronous FIFOs, no clock-domain crossing, lower latency).
       **Off** – the port has its own clock and asynchronous CDC FIFOs are
       inserted.
     - Off
     - On / Off
   * - ``NUM_OUTSTAND_WR_SLV``
     - Maximum number of write transactions that the port can have
       outstanding to the Slave. When the limit is reached, the port holds
       further writes until a response returns.
     - 0
     - 0 – 4096
   * - ``NUM_OUTSTAND_RD_SLV``
     - Maximum number of read transactions that the port can have
       outstanding to the Slave. When the limit is reached, the port holds
       further reads until a response returns.
     - 0
     - 0 – 4096
   * - ``SIM_NUM_STAGE_PIPELINE_TX``
     - Register stages on the channels the port sends to the Slave: write
       address, write data and read address.
     - 0
     - 0 – 32
   * - ``SIM_NUM_STAGE_PIPELINE_RX``
     - Register stages on the channels the port receives from the Slave:
       write response and read data.
     - 0
     - 0 – 32
   * - ``SIM_REORDER_EN``
     - Enables the reorder buffer. See :ref:`flowplex-sim-reorder`.
     - Off
     - On / Off
   * - ``USE_ADDR_TRANS_SLV``
     - Enables address translation. See :ref:`flowplex-sim-addr-trans`.
     - Off
     - On / Off
   * - ``SLV_RDATA_DEPTH``
     - Depth, in read-data beats, of the read-data buffer. A deeper buffer
       lets the Slave keep returning read beats while the NoC applies
       backpressure, at the cost of area. Each entry stores a full beat
       (``RDATA``, ``RID``, ``RRESP``, ``RUSER`` and ``RLAST``).
     - 0
     - 0 – 256
   * - ``AXI_USER_REQ_WIDTH``
     - Width of ``AWUSER`` and ``ARUSER``.
     - 1
     - 1 – 64
   * - ``AXI_USER_DATA_WIDTH``
     - Width of ``WUSER`` and ``RUSER``.
     - 1
     - 1 – 64
   * - ``AXI_USER_RESP_WIDTH``
     - Width of ``BUSER``.
     - 1
     - 1 – 64
   * - ``MAX_BURST_LEN_DATA``
     - Maximum number of data beats per burst sent to the Slave. See
       :ref:`flowplex-sim-burst`.
     - 256
     - 1, 2, 4, 8, 16, 32, 64, 128, 256
 
.. important::
 
   Set ``NUM_OUTSTAND_WR_SLV`` and ``NUM_OUTSTAND_RD_SLV`` no higher than
   the number of transactions the Slave can accept.
 
.. _flowplex-sim-reorder:
 
Reorder buffer (SIM_REORDER_EN)
===============================
 
* **Off (default)** – all requests are sent to the Slave with ID 0, so the
  Slave must return responses in request order.
* **On** – requests keep distinct IDs and the Slave can respond out of
  order. The buffer puts the responses back into request order before they
  return to the NoC.
 
Turn this on for Slaves that benefit from out-of-order completion. The
buffer adds area that grows with the number of outstanding transactions.
 
.. _flowplex-sim-addr-trans:
 
Address translation (USE_ADDR_TRANS_SLV)
========================================
 
* **On** – the Slave's base address (from the
  :ref:`Address Map <flowplexaddressmap>`) is subtracted from each read and
  write address, so the Slave sees offsets that start at 0 instead of global
  NoC addresses.
* **Off (default)** – addresses pass through unchanged.
 
.. note::
 
   Addresses in an interleaved region are never translated.
 
.. _flowplex-sim-burst:
 
Maximum burst length (MAX_BURST_LEN_DATA)
=========================================
 
Use a value smaller than 256 when the Slave cannot accept full-length AXI4
bursts, or to reduce read reorder buffer storage.
 
* **Port without rate matching** – any value other than 256 inserts a burst
  limiter that splits read and write bursts into bursts of at most this many
  beats.
* **Rate-matched port** – the burst limit is set by the data width ratio
  instead: ``256 / (NoC data width / Slave data width)`` beats. This setting
  then only shortens reads whose transfer size is narrower than the Slave
  data width, and only when out-of-order transactions are enabled.
* **Reorder buffer enabled** – each read reorder slot is sized to hold this
  many beats, so a lower value reduces buffer memory.
 
Repeat these steps for each SIM in the design.
