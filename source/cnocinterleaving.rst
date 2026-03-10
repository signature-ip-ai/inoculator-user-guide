C-NoC Address Interleaving 
==================================================

Coherent NoC Address Interleaving is a feature that distributes memory addresses across multiple target devices (such as memory controllers or slaves) within the Coherent Network-on-Chip (NoC).
Instead of sending all transactions for a continuous address range to a single target, the address space is divided into smaller chunks and interleaved among several targets.

This mechanism helps improve system performance by balancing traffic across multiple devices, enabling parallel access, and reducing bottlenecks in the interconnect. 
As a result, memory bandwidth utilization is increased and overall system efficiency is improved.

User can configure this in System Config > Interleaving tab

.. image:: 
