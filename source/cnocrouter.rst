C-NoC Router
===================================================

**Device ID** – This represents the unique identifier of the selected device.

**Cluster ID** - Cluster ID is an identifier assigned to a router to indicate the cluster or group it belongs to within the Coherent NoC topology. It helps organize routers into clusters for routing, coherency management, and system organization.

**Router Type** – This is a dropdown parameter which router type to be used on the selected component. User can choose between 'Repeater', 'HN-F w/ L3', 'HN-F w/o L3', or 'Device Only'. 

**Hashed Home Node** - This toggle button will only appear when the selected Router Type is either ‘HN-F w/ L3’ or ‘HN-F w/o L3’

**Device Port (Available in router type 'HN-F w/ L3', 'HN-F w/o L3', ‘Device Only’ and ‘Repeater’)**
---------------------------------------------------------------------------------------------------------------------

.. image:: images/cnoc_router_devicePort.png
  :alt: cnoc_router_devicePort
  :align: center


**RX REQ FIFO Ptr Width** – This Pointer width to indicate depth of input request flit buffer at processor port of the NoC. Default value is 2 and can be configure from 1 to 5. 

**Rx RSP FIFO Ptr Width** – This Pointer width to indicate depth of input response flit buffer at processor port of the NoC. Default value is 2 and can be configure from 1 to 5. 

**Rx DAT FIFO Ptr Width** – This Pointer width to indicate depth of input data flit buffer at processor port coming of the NoC. Default value is 2 and can be configure from 1 to 5. 

**Tx REQ FIFO Ptr Width** – This Pointer width to indicate depth of output request flit buffer at the processor port of the NoC. Default value is 2 and can be configure from 1 to 5. 

**Tx RSP FIFO Ptr Width** – This Pointer width to indicate depth of output response flit buffer at the processor port of the NoC. Default value is 2 and can be configure from 1 to 5. 

**Tx DAT FIFO Ptr Width** – This Pointer width to indicate depth of output data flit buffer at the processor port of the NoC. Default value is 2 and can be configure from 1 to 5. 

**Interconnect Port (Available in router type 'HN-F w/ L3', 'HN-F w/o L3', ‘Device Only’, and ‘Repeater’)**
--------------------------------------------------------------------------------------------------------------------

.. image:: images/cnoc_router_interconnectPort.png
  :alt: cnoc_router_interconnectPort
  :align: center


**REQ FIFO Ptr Width** – This Pointer width to indicate depth of input request flit buffer to receive flits from neighboring cluster. Default value is 2 and can be configure from 1 to 5. 

**RESP FIFO Ptr Width** – This Pointer width to indicate depth of input response flit buffer to receive flits from neighboring cluster. Default value is 2 and can be configure from 1 to 5. 

**DATA FIFO Ptr Width** – This Pointer width to indicate depth of input data flit buffer to receive flits from neighboring cluster. Default value is 2 and can be configure from 1 to 5. 
	
**Directory Cache Controller (Available in router type 'HN-F w/ L3', 'HN-F w/o L3')**
---------------------------------------------------------------------------------------------

.. image:: images/cnoc_router_directory.png
  :alt: cnoc_router_directory
  :align: center


**Rx REQ FIFO Ptr Width** – This Pointer width to indicate buffer depth to hold input request flit coming to CC port from internal channel after arbitration between multiple sources. Default value is 3, and user can choose from 1 to 5 as the width. 

**Rx RSP FIFO Ptr Width** – This Pointer width to indicate buffer depth to hold input response flit coming to CC port from internal channel after arbitration between multiple sources. Default value is 3, user can choose from 1 to 5 as the width.

**Rx DAT FIFO Ptr Width** – This Pointer width to indicate buffer depth to hold input data flit coming to CC port from internal channel after arbitration between multiple sources. Default value is 3, user can choose from 1 to 5 as the width. 

**Tx REQ FIFO Ptr Width** – This Pointer width of output request flit buffer coming from CC Port to internal channel. Default value is 3, user can choose from 1 to 5 as the width.

**Tx RSP FIFO Ptr Width** – This Pointer width of output response flit buffer coming from CC Port to internal channel. Default value is 3, user can choose from 1 to 5 as the width.

**Tx DAT FIFO Ptr Width** – This Pointer width of output data flit buffer coming from CC Port to internal channel. Default value is 3, user can choose from 1 to 5 as the width.

**Cache Byte Offset Width** – This Byte offset of the cacheable physical address for 64 Byte cache line. Default value is 6 and can be configure from 1 to 10. 

**Cache Index Width** – This Index of the cacheable physical address. 2k indicates the depth of a single cache memory in N-way set associative cache mapping scheme. Default value is 10, user can choose from 1 to 20 as the width.

**Cache N-Set** – This Number of sets in N-way set associative cache mapping scheme. Number of sets is determined as 2k such that 0 ≤ k ≤ 5. This is a dropdown parameter with a selection of 1, 2, 4, 8, 16, or 32. Default value is 16.

**REQ CMD FIFO Ptr Width** – This FIFO Pointer width for request flit waiting to be fed to controller pipeline process.  Default value is 4 and can be configure from 1 to 5.

**REQ CMD FIFO Size** - This FIFO size is non-configurable and default value is 16. 

**RSP CMD FIFO Ptr Width** – This FIFO Pointer width for response flit waiting to be fed to controller pipeline process. Default value is 5 and can be configure from 1 to 5.

**RSP CMD FIFO Size** - This FIFO Size is non-configurable and default value is 32. 

**DAT CMD FIFO Ptr Width** – This FIFO Pointer width for data response waiting to be fed to controller pipeline process. Data response is generated from data flit coming from RN (processor). Default value is 5 and can be configure from 1 to 5. 

**DAT CMD FIFO Size** - This FIFO Size is non-configurable and default value is 32. 

**DAT RSP CMD FIFO Size** – This FIFO depth for memory response waiting to be fed to controller pipeline process. Memory response is generated from data flit coming from Memory IO/L3.  Default value is 32 and can be select other value from 2, 4, 8, 16 and 32. 

**REQ Collision Buffer Size** - This Buffer size defines the buffer capacity used to handle request collisions and avoid data conflicts during processing. User can set the value from 1 to 32 and 8 as the default value size.

**REQ Outstanding Buffer Size** - This buffer size defines the maximum number of pending request transactions that can be stored and processed simultaneously. User can set from 1 to 32 and 16 ad the default value. 

**HDR FIFO Ptr Width** - This FIFO pointer defines the pointer width used for managing the header FIFO buffer entries. User can set from 1 to 5 and 2 as the default value. 

**L3 Cache Controller Settings (Available in router type 'HN-F w/ L3')**
----------------------------------------------------------------------------

.. image:: images/cnoc_router_l3cache.png
  :alt: cnoc_router_l3cache
  :align: center


**L3 Cache Byte Offset Width** – This Byte offset of the cacheable physical address for 64 Byte cache line for L3. Default value is 6, user can choose from 1 to 20 as the width.

**L3 Cache Index Width** – This Index of the cacheable physical address. 2k indicates the depth of a single cache memory in N-way set associative cache mapping scheme for L3. Default value is 10, user can choose from 1 to 20 as the width.

**L3 Cache N-Set** – This Number of sets in N-way set associative cache mapping scheme for L3 cache. Number of sets is determined as 2k such that 0 ≤ k ≤ 5. This is a dropdown parameter with a selection of 1, 2, 4, 8, 16, or 32. Default value is 16.





