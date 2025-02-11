Bridge Configuration
=======================================

Bridges or Pipelines refer to devices or components that connect two or more network segments or different types of buses, allowing them to communicate and function as a unified network. In iNoCulator, they are represented as the connection between two routers with different subtopologies. 
To add bridges in the design:
  - Select the ‘Bridge’ icon from the Components menu and place it on the grid.
  - Connect the bridge to a router by dragging one end of the bridge to any port on the router.
  - Drag the other end of the bridge to any port on another router with a different subtopology.
  - The topology will show a connection between two routers with different subtopologies

.. image:: images/sample_topology_with_bridge2.png
  :alt: sample_topology_with_bridge2
  :align: center

.. image:: images/bridge_configuration.png
  :alt: bridge_configuration
  :align: center

To configure a bridge, click the bridge added to the grid to display the side panel on the right.

**Name** – Label name assigned for selected bridge. This is an input field where only alphanumeric keys and underscores are allowed. 

**Incoming Link** – This identifies what router connection is an incoming link. 

**Outgoing Link** – This identifies what router is the outgoing link. 

**Number of Pipeline Stages** – This is an input field where user can set the number of stages the selected bridge must have. The range is from 0 stage to 65,535 stages. 						

