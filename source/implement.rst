===================================================
Physical Implementation & Fabrication Prep
===================================================

The **Implement** pipeline bridges your finalized logical Network-on-Chip (NoC) layout with down-stream physical design (PD) automation scripts. This workspace prepares your compiled register-transfer level (RTL) netlists for synthesis, place-and-route (P&R), and eventual silicon manufacturing tape-out.

--------------------------------------------------------------------------------

🛠️ Implementation Configuration Workflow
=========================================

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Open the Implementation Wizard
      :class-header: bg-light font-weight-bold

      **Workspace Action Bar Navigation**
      
      Open your compiled design canvas. Locate and click the **Implement** button inside the main action header bar to overlay the physical compilation configuration workspace window.
      
      .. image:: images/implement_button.png
         :alt: Locating the physical implementation trigger button on the workspace toolbar
         :align: center
         :width: 75%

   .. grid-item-card:: Step 2: Bind Toolchains and Custom Infrastructure
      :class-header: bg-light font-weight-bold

      **Parameter Configuration & Tool Setup**
      
      Select your target manufacturing synthesis or place-and-route software stack from the primary tool dropdown menu options. 
      
      To seed the physical engine with specific constraints, toggle the radio modifiers to upload your proprietary files:
      
      * **Use Custom PD (Physical Design Files):** Uploads localized floorplanning, timing constraint, or technology files (such as ``.LEF``, ``.DEF``, or ``.SDC`` scripts).
      * **Use Custom Floor Plan:** Uploads specialized spatial configuration files defining boundary boxes and layout margins.

      .. image:: images/implement2.png
         :alt: Physical implementation tool selection dropdown and custom file upload options overlay
         :align: center
         :width: 75%

   .. grid-item-card:: Step 3: Dispatch to the Synthesis Cluster
      :class-header: bg-light font-weight-bold

      **Job Request Finalization**
      
      Verify that all file upload buffers are full and error-free, then click the **Request Implementation** action control button. 
      
      The tool will instantly package your hardware configuration, bundle your custom physical constraints, and launch the background implementation run on your remote high-performance computing (HPC) synthesis farm.

--------------------------------------------------------------------------------

📋 Fabrication Preparation Pre-requisites
=========================================

.. note::
   **Validation Enforcement Check:**
   
   Before running an implementation job request, your layout must possess zero errors inside the **Topology Validation** log. Running physical layout compilers on unvalidated netlists can cause catastrophic cell routing loops or timing closure violations on the target silicon.
