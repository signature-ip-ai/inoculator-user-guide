.. _flowplexaddressmap:

=======================
Address Map (Flowplex)
=======================
 
The **Address Map** assigns an address range to each Slave interface. The
fabric uses it to decide which Slave receives each request.
 
The Address Map is always in the right panel of the **Design** tab, below
**System Config**, the **Edit** panel of the selected item, or the
**Routing Table**.
 
Address Map columns
===================
 
.. list-table::
   :header-rows: 1
   :widths: 20 80
 
   * - Column
     - Description
   * - **Slave Interface**
     - The Slave, for example ``S0`` … ``S7``. There is one row for each
       Slave in the design.
   * - **Base**
     - The start address of the Slave's range, as a hexadecimal value. The
       ``0x`` prefix is shown in the field.
   * - **Size**
     - The size of the range: a number and a unit. The size must be at
       least 1 B.
 
Size units:
 
* B
* KiB
* MiB
* GiB
* TiB
* PiB
* EiB
 
Set an address range
====================
 
1. Find the row of the Slave, for example ``S0``.
2. In **Base**, enter the start address in hexadecimal, for example
   ``0x00000000``.
3. In **Size**, enter the number, then select the unit, for example ``64``
   and ``KiB``.
4. Repeat for each Slave.
 
Example
-------
 
.. list-table::
   :header-rows: 1
   :widths: 30 35 35
 
   * - Slave Interface
     - Base
     - Size
   * - S0
     - ``0x00000000``
     - 64 KiB
   * - S1
     - ``0x00010000``
     - 64 KiB
   * - S2
     - ``0x00020000``
     - 64 KiB
 
.. important::
 
   Do not let the address ranges of two Slaves overlap. Each range ends at
   *Base + Size − 1*, so the next Slave's base must be at or above that
   value plus one.
 
Sort the table
==============
 
Hover over a column header to show the sort arrow, then click the header to
sort the rows by that column.
 
.. note::
 
   When ``USE_ADDR_TRANS_SLV`` is turned on for a SIM, the Slave's **Base**
   value is subtracted from each address before it reaches the Slave. See
   :ref:`flowplex-sim-addr-trans`.
 
