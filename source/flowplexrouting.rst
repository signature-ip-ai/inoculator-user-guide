.. _flowplexrouting:

=============
Routing Table
=============
 
The **Routing Table** defines the path that each transaction takes through
the fabric:
 
* **Request routes** go from an ingress port to an egress port
  (``Ix`` → ``Ex``), from the Master side to the Slave side.
* **Response routes** go from an egress port back to an ingress port
  (``Ex`` → ``Ix``), from the Slave side to the Master side.
 
In a design with 8 Masters and 8 Slaves, the full table has 64 request
routes and 64 response routes.
 
Open routing mode
=================
 
1. Open the project and select the **Design** tab.
2. In **Topology Controls**, click **Configure Routes**.
 
In routing mode:
 
* The Masters and MIMs are dimmed so that the ports and connections stand
  out.
* The **Configure Routes** button changes to **Exit Routing**.
* The right panel shows the **Routing Table**.
 
To return to the normal canvas, click **Exit Routing**
(tooltip: *Return to the default Design canvas*).
 
Routing Table panel
===================
 
.. list-table::
   :header-rows: 1
   :widths: 25 75
 
   * - Item
     - Description
   * - **Generate Routes**
     - Creates routes automatically. The button is disabled with the tooltip
       *All routes configured* when the table is complete.
   * - **Clear Routes**
     - Removes all routes from the table.
   * - **REQUEST**
     - Lists the request routes (``Ix`` → ``Ex``).
   * - **RESPONSE**
     - Lists the response routes (``Ex`` → ``Ix``).
   * - Green check next to a section name
     - All routes in that section are configured.
 
Each route row shows:
 
* The source and destination, for example ``Ix0 → Ex0``.
* A green check when the route is configured.
* The path of the route in brackets, for example ``[Ix0 → Ex0]``.
* A red trash icon (tooltip: *Clear route*) that removes the route.
 
View a route on the canvas
--------------------------
 
Click a route row. The row is highlighted, and the route's ports and
connection are highlighted on the canvas.
 
Generate routes automatically
=============================
 
1. Click **Configure Routes**.
2. Click **Generate Routes**.
3. Check that a green check appears next to **REQUEST** and **RESPONSE**.
 
Trace a route manually
======================
 
1. Click **Configure Routes**.
2. On the canvas, drag from the source port to the destination port:
 
   * For a request route, drag from an ``Ix`` node to an ``Ex`` node.
   * For a response route, drag from an ``Ex`` node to an ``Ix`` node.
 
3. The new route appears in the **REQUEST** or **RESPONSE** list.
 
Remove routes
=============
 
* To remove one route, click the trash icon on its row.
* To remove all routes, click **Clear Routes**.
 
.. warning::
 
   **Clear Routes** removes every request and response route. Use
   **Generate Routes** or trace the routes again to restore them.
 
