.. _flowplexlinkportconfig:

======================
Linkport Configuration
======================
 
A **Linkport** (``Lx``) is an intermediate node in the fabric. You choose
which ingress ports (``Ix``) and egress ports (``Ex``) each Linkport
connects to. In the ``user_guide_flowplex`` project:
 
* ``Lx0`` connects ``Ix0`` and ``Ex0``.
* ``Lx1`` connects ``Ix7`` and ``Ex7``.
 
Add a Linkport
==============
 
1. In the left panel, find the **Linkport** section.
2. Click the ``Lx`` block, or drag it onto the canvas
   (tooltip: *Click or drag this to canvas to add*).
3. The new Linkport is named in sequence, for example ``Lx2``.
 
Connect a Linkport
==================
 
1. Click a Linkport on the canvas, for example ``Lx0``.
   The Linkport is outlined in green, and its connected ports and
   connections are highlighted in yellow.
2. The right panel shows **Edit Linkport [Lx0]**. It lists all ingress ports
   (orange, ``Ix0`` … ``Ix7``) on the left and all egress ports (teal,
   ``Ex0`` … ``Ex7``) on the right.
3. Click a port to connect it to the Linkport. Click it again to disconnect
   it. Connected ports have a yellow outline.
4. Click **Save** to apply the changes.
 
Panel buttons
-------------
 
.. list-table::
   :header-rows: 1
   :widths: 20 80
 
   * - Button
     - Action
   * - **Connect All**
     - Selects all ingress and egress ports.
   * - **Clear**
     - Clears all port selections for this Linkport.
   * - **Save**
     - Applies your changes. The button is available only when there are
       unsaved changes.
 
.. important::
 
   Changes are not applied until you click **Save**. If you select another
   item without saving, the changes are lost.
 
Check Linkport status
=====================
 
Click an empty area of the canvas to show **System Config** in the right
panel. It lists:
 
* **Number of Linkports**
* **Fully connected** – the number of Linkports that are fully connected.
* **Partially connected** – the number of Linkports that are partially
  connected.
* **Disconnected** – the number of Linkports with no connections.
 
.. tip::
 
   After you change Linkport connections, open the
   :ref:`Routing Table <flowplexrouting>` and check that all routes
   are still configured.
 
