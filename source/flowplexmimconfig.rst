.. _flowplexmimconfig:

=================
MIM Configuration
=================
 
A **Master Interface Module (MIM)** sits between a Master and its ingress
port. It converts the Master's bus protocol into fabric packets. Each Master
has its own MIM, for example ``M0`` → ``MIM_0`` → ``Ix0``.
 
Open the MIM settings
=====================
 
1. Open the project and select the **Design** tab.
2. On the canvas, click a MIM block, for example ``MIM_0``.
   The block is outlined in green.
3. The right panel shows **Edit MIM [M0]**, where ``M0`` is the Master
   attached to the MIM.
4. Set the **PROTOCOL** and the **Port Parameters** described below.
 
.. tip::
 
   Hover over a parameter name to see a short description of it.
 
Protocol
========
 
**PROTOCOL** (*Interface Protocol*) sets the bus protocol of the Master.
 
Available values:
 
* AXI4
* AXI4 Lite
* AXI4 Stream
* AXI3
* AHB5
* AHB3
* APB5
* APB3
 
.. note::
 
   The list of **Port Parameters** depends on the selected protocol. The
   table below shows the parameters for **AXI4**.
 
Port Parameters (AXI4)
======================
 
.. list-table::
   :header-rows: 1
   :widths: 30 30 15 25
 
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
   * - ``MST_WDATA_DEPTH``
     - Master write data depth.
     - 0
     - 0 or more
   * - ``IS_SAME_CLK``
     - Turn on when the device clock is the same as the fabric clock.
     - Off
     - On / Off
   * - ``NUM_OUTSTAND_WR_MST``
     - Number of outstanding write transactions.
     - 0
     - 0 – 4096
   * - ``NUM_OUTSTAND_RD_MST``
     - Number of outstanding read transactions.
     - 0
     - 0 – 4096
   * - ``MAX_WR_BEATS_FABPKT``
     - Maximum write beats per fabric packet.
     - 16
     - 1 or more
   * - ``MAX_RD_BEATS_FABPKT``
     - Maximum read beats per fabric packet.
     - 16
     - 1 or more
   * - ``MAX_OUTSTND_WR_FABPKT``
     - Maximum outstanding write packets.
     - 4
     - 1 or more
   * - ``MAX_OUTSTND_RD_FABPKT``
     - Maximum outstanding read packets.
     - 4
     - 1 or more
   * - ``MIM_NUM_STAGE_PIPELINE_TX``
     - Number of TX pipeline stages.
     - 0
     - 0 or more
   * - ``MIM_NUM_STAGE_PIPELINE_RX``
     - Number of RX pipeline stages.
     - 0
     - 0 or more
   * - ``NUM_VCS``
     - Number of virtual channels.
     - 0
     - 0, 1, 2, 4, 8, 16
   * - ``VC_STARVATION_THRESH``
     - Virtual channel starvation threshold.
     - 0
     - 0 or more
   * - ``EN_LOCAL_SRAM``
     - Enables local SRAM.
     - Off
     - On / Off
   * - ``EN_LOCAL_ROM``
     - Enables local ROM.
     - Off
     - On / Off
   * - ``AXI_USER_REQ_WIDTH``
     - Width of ``AWUSER`` and ``ARUSER``.
     - 1
     - 1 or more
   * - ``AXI_USER_DATA_WIDTH``
     - Width of ``WUSER`` and ``RUSER``.
     - 1
     - 1 or more
   * - ``AXI_USER_RESP_WIDTH``
     - Width of ``BUSER``.
     - 1
     - 1 or more
 
.. note::
 
   The allowed range of each numeric field is shown above the field, for
   example *min: 1, max: 8*.
 
Repeat these steps for each MIM in the design.
