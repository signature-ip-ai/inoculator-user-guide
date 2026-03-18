NC-NoC Auto Route 
==================================================

The NC-NoC Auto Route feature automatically generates the optimal paths for data traffic between devices in the Network-on-Chip. 
It simplifies router configuration by calculating routes based on the topology, reducing manual setup, and ensuring efficient communication across the system.

.. image:: images/auto_route_button.png
  :alt: auto_route_button
  :align: center

The feature provides status indicators to show the progress and result of the routing process:

**Cached** – Routes have already been calculated and stored; no new computation was needed.

.. image:: images/auto_route_cached.png
  :alt: auto_route_cached
  :align: center

**Success** – Routing completed successfully and all paths are valid.

.. image:: images/auto_route_success.png
  :alt: auto_route_success
  :align: center

**Warning** – Routing completed, but some issues or potential conflicts were detected.

.. image:: images/auto_route_success_with_warning.png
  :alt: auto_route_success_with_warning
  :align: center

**Updated** – Connections changed, user must re-run the Auto Route or update the routing table.

.. image:: images/auto_route_updated_routes.png
  :alt: auto_route_updated_routes
  :align: center


**Failed** – Routing could not be completed; manual intervention may be required.

.. image:: images/auto_route_failed.png
  :alt: auto_route_failed
  :align: center
