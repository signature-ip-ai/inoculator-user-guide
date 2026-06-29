========================================================
Automated Topology Generation via File Upload
========================================================

Instead of placing elements onto the canvas grid manually, iNoCulator Web supports rapid programmatic layout instantiation through external spreadsheet templates or structural object notation models. This allows engineering teams to parse matrix designs or historical device lists into active, editable visual configurations instantly.

--------------------------------------------------------------------------------

Automated Import Pipelines
==============================

Choose your target structural data file format using the workspace selectors below to review the explicit configuration and verification pipelines:

.. tab-set::

   .. tab-item:: 📊 I. Using Excel file (XLSX)

      To generate a complete, connected Network-on-Chip canvas instantly from standardized register tables, leverage the active system spreadsheet matrix template.

      **Step 1: Populate the Template Spreadsheet Matrix**
         Prepare your parameters using the authorized spreadsheet template file (current release: ``nc-noc_topology_generator_v1.4``). Follow the precise formatting instructions embedded within the asset sheet headers to populate component records.

         .. image:: images/uploading_topology-excel_sheet.png
            :alt: Structured rows mapping router links and device properties inside the Excel matrix template
            :align: center
            :width: 85%

      **Step 2: Initialize Project Core Creation**
         Navigate to your browser interface at ``inoculator.ai/login``, log in with your credentials, and land on the main Project Dashboard view. Click the prominent **+** tile card icon to generate a fresh canvas instance.

         .. image:: images/uploading_topology-create_project_icon3.png
            :alt: Location of the macro add-project action tile card button on the dashboard grid layout
            :align: center
            :width: 75%

      **Step 3: Access the Spreadsheet Attachment Vector**
         When the **Create Project** modal overlay dialog box surfaces, identify the custom upload handle block. Click the button labeled **Upload Topology XLSX file**.

         .. image:: images/uploading_topology-create_project_prompt2.png
            :alt: Dialog prompt options highlighting the explicit Excel source file selection button
            :align: center
            :width: 80%

      **Step 4: Execute File System Selection**
         The application prompts your local operating system's native file examiner utility window. Highlight your completed configuration spreadsheet and submit the selection.

         .. image:: images/uploading_topology-selecting_file3.png
            :alt: Native OS file explorer viewport targeting the local topology template spreadsheet
            :align: center
            :width: 80%

      **Step 5: Process and Instantiate the Netlist Canvas**
         Once the filename mounts successfully within the input form field, click the primary **Create** button to dispatch the structural parser logic.

         .. image:: images/uploading_topology-generating_topology3.png
            :alt: Submitting the populated form to trigger database netlist extraction logic
            :align: center
            :width: 80%

      **Step 6: Audit the Compiled Visual Grid Layout**
         If the syntax checker verifies the row values without errors, the engine updates your account registry and builds out the interactive floorplan grid. Every extracted router, bridge, and endpoint node drops into its designated subtopology zone and remains fully editable via the inspector panels.

         .. image:: images/uploading_topology-successful_generation.png
            :alt: Populated active design grid canvas showing successfully extracted and linked hardware nodes
            :align: center
            :width: 90%

   .. tab-item:: ⚙️ II. Using JSON file

      For scripting workflows, continuous integration pipelines, or transferring legacy iNoCulator setups, you can pipe a native serialization object into the database engine.

      **File System Selection**
         From your computer's storage path, stage any structural JavaScript Object Notation (``.json``) tracking text block that maps strictly to an NC-NoC format.

         .. image:: images/upload_json_file.png
            :alt: Locating and mounting a structured JSON design representation schema file
            :align: center
            :width: 85%

      **Successful Data Tree Extraction**
         When your JSON file matches the latest schema signature, the platform ingests the node tree effortlessly, populating your system configuration tables and workspace maps.

         .. image:: images/upload_json_success.png
            :alt: System success prompt acknowledging the data migration passed validation checks
            :align: center
            :width: 85%

      **Structural Out-of-Date Discrepancies**
         If your JSON code contains legacy database keys, broken parameter brackets, or outdated property names from previous tool updates, the intake logic will block ingestion and generate a file verification fault.

         .. image:: images/upload_json_fail.png
            :alt: Error warning screen generated when parsing broken or legacy JSON properties sets
            :align: center
            :width: 85%

--------------------------------------------------------------------------------

⚠️ Tenant Accessibility & Gateway Restrictions
===============================================

.. note::
   **Interface Control Field Visibility Rules:**
   When using object file injections, the explicit **JSON File** toggle control option must be visible on your upload prompt box. 
   
   If this selection control is missing or remains completely hidden from view, your current group license level or user profile tier lacks programmatic import privileges. Contact your System Administrator or Group Manager to activate API and script upload features on your tenant node.
