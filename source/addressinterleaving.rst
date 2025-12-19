Address Interleaving 
========================================================

System Config 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Address Interleaving is a system-level feature that allows memory or address ranges to be split and distributed across multiple target (slave) ports.
This must be enabled first before you can configure Target Address Interleaving in the Address Map.

1. Enable Address Interleaving 
  - Values: 0 = Off, 1 = On
  - Default: 0

Turning this on allows the corresponding slave port to use Target Address Interleaving.


Target Address Interleaving
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Target Address Interleaving allows a specific slave port (target) to receive memory or address ranges in smaller alternating segments instead of one continuous block.
When enabled, the address map can split and distribute traffic more evenly across multiple ports, improving bandwidth and balancing load.

This feature becomes configurable only if Address Interleaving is enabled in System Config.
Users can also set the Minimum Transaction Size, which determines how small each interleaved segment can be.

1. Enable Address Interleaving 
  - Values: 0 = Off, 1 = On
  - Default: 0

Turning this on will also validates the values in Minimum Transaction Size, Read Reorder Buffer Size, Write Reorder Buffer Size, Flit Write Packet Size and Flit Read Buffer Size, together with NoC Data Width and Port Data Width. 

2. Minimum Transaction Size 
  -  Default: 128 
  - Valid Values: 16, 32, 64, 128, 256, 512, 1024, 2048

This sets the minimum allowed transaction size for interleaving.

Dependencies when Target Address Interleaving is Enabled
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If Address Interleaving = ON, the following rules must be met:

A. Transaction size must fit initiator buffer limits

  - Minimum Transaction Size must be less than or equal to both:
      - Initiator Flit Read Buffer Size
      - Initiator Flit Write Packet Size

  The system uses the smallest available value if different initiators exist.

B. Additional rule for Rate Matching (if NOC_DATA_WIDTH ≠ SLV_DATA_WIDTH)

  - Minimum Transaction Size must also be ≤:
    256 / (NOC_DATA_WIDTH / SLV_DATA_WIDTH)

C. Reorder Buffers must be large enough

  - Write Reorder Buffer Size must be ≥ 4096 / Minimum Transaction Size
  - Read Reorder Buffer Size must be ≥ 4096 / Minimum Transaction Size

  If different slaves have different transaction sizes, the smallest one is used for checking.






