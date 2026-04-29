C2C Bridge Configuration 
====================================================

The C2C Bridge, also known as the CHI-to-CPI Bridge, provides seamless protocol conversion between CHI (Coherent Hub Interface) and CPI (Coherent Port Interface) within C-NoC (Cache-Coherent Network-on-Chip) topologies.

Purpose
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


- Acts as a translation layer to enable interoperability between components using different coherence protocols.

- Ensures data integrity, protocol compliance, and transaction consistency across interconnected subsystems.


Key Functions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


- Protocol Conversion: Converts CHI requests, responses, and snoop messages into the CPI equivalent, and vice versa.

- Address Mapping Support: Maintains compatibility with the configured Home Node and Subordinate Node Address Maps.

- Cache Coherency: Preserves coherency rules during translation to allow smooth operation between CHI-based clusters and CPI-based devices.

- Scalability: Allows system architects to integrate heterogeneous IP blocks and scale up multi-cluster designs.

Use in Topology
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


In a C-NoC design:

- The C2C Bridge connects CHI clusters to CPI-based devices or subsystems.

- It ensures traffic between clusters remains synchronized, coherent, and protocol-compliant.

- Designers can configure and visualize the bridge placement within the topology using the Inoculator Web tool.

To add to the canvas, place the mouse on the Interconnect Port or any of the N, E, S, or W ports. This component can only be added in a position where no routers are connected.
Select the 'Connect C2C Bridge' option from the context menu. 

.. image:: images/cnoc_add_bridge_edge.png
  :alt: cnoc_add_bridge_edge
  :align: center


C-NoC Parameters
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


**Connected Topology ID** - A Connected Topology ID is a single numeric value used to represent a topology’s position by combining its X and Y coordinates. Each ID must be unique within the topology. It is computed by placing the Y coordinate in the higher bits and the X coordinate in the lower bits, using the formula:

  Topology ID = (Y << 2) | X

In simple terms:

  Multiply Y by 4

  Add X

  The result is the Topology ID

  This makes it easy to uniquely identify a position on a small grid (where X ranges from 0 to 3) using just one number.

**Node ID** - The Node ID is a compact identifier that represents a node’s exact position and grouping within the topology. It is derived from multiple coordinate components (e.g., topology and cluster coordinates) and encoded into a single value using bitwise operations.

Purpose:

  Uniquely identifies a node within the system
  Encodes hierarchical location (e.g., topology + cluster position)
  Enables efficient hardware/software communication and routing

  Typical structure (example): {top_y, clus_y, top_x, clus_x, port_direction}

Each field occupies a fixed number of bits, allowing all location details to be packed into one numeric ID.

**Location ID** - The Location ID represents the physical or logical placement of a component within the system. Unlike Node ID (which is encoded and compact), Location ID is typically used for:

  Human-readable identification of position
  Mapping components in the UI or topology view
  Debugging and validation

Key difference from Node ID:

  Location ID → descriptive / positional reference
  Node ID → encoded / system-level identifier

**Bridge Type** - is a dropdown field where the user will be able to select between UCIE or CXL.

    UCIe (Universal Chiplet Interconnect Express) - A high-speed interconnect for communication between chiplets within a single package.

    CXL (Compute Express Link) – A high-speed interface for communication between processors, memory, and accelerators with cache coherency support.

**Connected Topology X** - is a dropdown field where the user will be able to select from 0 to 3. Represents the column position (left to right). It is stored in the lower bits of the Connected Topology ID.

**Connected Topology Y** - is a dropdown field where the user will be able to select from 0 to 3. Represents the row position (top to bottom). It is stored in the higher bits of the Connected Topology ID.

.. image:: images/cnoc_bridge_sample.png
  :alt: cnoc_bridge_sample
  :align: center

.. image:: images/cnoc_bridge_type.png
  :alt: cnoc_bridge_type
  :align: center

