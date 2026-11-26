===============================
Flowplex Design Canvas Overview
===============================
 
This section of the user guide covers the **Design** tab of a Flowplex
project in iNoCulator. It explains how to configure the interface modules,
linkports, routes and address map of the interconnect.
 
Canvas layout
==============
 
The Design canvas shows the interconnect from left to right:
 
.. list-table::
   :header-rows: 1
   :widths: 20 20 60
 
   * - Element
     - Example
     - Description
   * - Master
     - ``M0`` … ``M7``
     - The initiator devices that send requests into the fabric.
   * - MIM
     - ``MIM_0`` … ``MIM_7``
     - Master Interface Module. Converts the Master's protocol (for example,
       AXI4) into fabric packets. See :ref:`flowplexmimconfig`.
   * - Ingress port
     - ``Ix0`` … ``Ix7``
     - The point where traffic from a MIM enters the fabric.
   * - Linkport
     - ``Lx0``, ``Lx1``
     - An intermediate node that connects a group of ingress and egress
       ports. See :ref:`flowplexlinkportconfig`.
   * - Egress port
     - ``Ex0`` … ``Ex7``
     - The point where traffic leaves the fabric toward a SIM.
   * - SIM
     - ``SIM_0`` … ``SIM_7``
     - Slave Interface Module. Converts fabric packets back into the
       Slave's protocol. See :ref:`flowplexsimconfig`.
   * - Slave
     - ``S0`` … ``S7``
     - The target devices that receive requests and return responses.
 
Panels
=======
 
**Left panel**
 
* **Topology Controls**
 
  * **Generate Connections** – creates the connections between the ingress
    and egress ports. The button is disabled with the tooltip
    *Connections already generated* once the connections exist.
  * **Configure Routes** – opens routing mode and the
    :ref:`Routing Table <flowplexrouting>`.
 
* **Linkport** – holds the ``Lx`` block that you add to the canvas.
 
**Right panel**
 
The top section of the right panel changes with your selection:
 
* **System Config** – shown when nothing is selected. It lists the number of
  Masters, Slaves and Linkports.
* **Edit MIM [Mx]**, **Edit SIM [Sx]** or **Edit Linkport [Lxn]** – shown
  when you click a MIM, SIM or Linkport on the canvas.
* **Routing Table** – shown while routing mode is active.
 
The :ref:`Address Map <flowplex-address-map>` section always appears below
the top section.
 
.. tip::
 
   Click the arrow on the edge of a side panel to collapse it and see more of
   the canvas, for example the egress ports, SIMs and Slaves on the right.
