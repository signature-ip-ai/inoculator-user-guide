===================================================
Creating Non-Coherent NoC Project with CXS 
===================================================

The **Create Project** workflow initializes a clean workspace tailored for **Non-Coherent NoC 2.0 (CXS)** topologies utilizing CXS packet transport. This configuration loads high-throughput streaming credit-based interfaces and non-coherent transport bridges for systems that do not require hardware-managed cache coherency.

--------------------------------------------------------------------------------

Project Settings Configuration Options
=========================================

The Project Settings wizard panel allows you to configure essential design rules and data sources before generating your hardware canvas layout.

.. image:: images/cxs_createproject.png
   :alt: Non-Coherent NoC (CXS) project wizard configuration options modal
   :align: center
   :width: 65%

.. list-table:: Project Configuration Form 
   :widths: 25 25 50
   :header-rows: 1

   * - Field Parameter
     - Setting Input Type
     - Description & Platform Entry Constraints
   * - **Project Type**
     - Dropdown Selector
     - Selects the target fabric architecture. Options include:
       
       * **Non-Coherent NoC** — Activates memory-mapped routing.
       * **Coherent NoC** — Toggles cache-coherent (CHI) structures.
       * *Integration* — *(Currently not implemented).*
   * - **Project Name**
     - String Input Block
     - **Required Field.** Enter a unique layout identifier name. 
       
       *(Subject to strict naming constraints below).*
