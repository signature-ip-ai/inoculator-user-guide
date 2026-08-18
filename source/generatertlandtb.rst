=========================================================
NC-NoC Generating RTL and Testbench
=========================================================

The **RTL Generation Engine** compiles your finalized Non-Coherent NoC (NC-NoC) topology matrix into synthesizable Register-Transfer Level (RTL) source code files along with a fully customized verification testbench environment.

--------------------------------------------------------------------------------

Compilation and Build Pipeline
=================================

.. grid:: 1
   :gutter: 4

   .. grid-item-card:: Step 1: Initialize the RTL Build Prompt
      :class-header: bg-light font-weight-bold

      **Action Bar Trigger**
      
      Open your active design canvas and click the **Generate RTL** control button located inside the primary top Action Bar.
      
      .. image:: images/generate_rtl3.png
         :alt: Locating the primary Generate RTL action button in the toolbar canvas
         :align: center
         :width: 70%

   .. grid-item-card:: Step 2: Configure Architectural Model Modifiers
      :class-header: bg-light font-weight-bold

      **Cycle-Accurate Selection**
      
      The RTL generation modal menu will slide into view. To include an execution reference model alongside your standard verilog/systemverilog targets, check the **Include Cycle Accurate Model** box. Leave it empty to compile standard RTL blocks exclusively.
      
      Click the **Generate Design** button to dispatch the job to the cloud compilation cluster.
      
      .. image:: images/generate_rtl_files_and_testbench5.png  
         :alt: RTL Generation Modal configuration properties overlay window
         :align: center
         :width: 75%

   .. grid-item-card:: Step 3: Monitor Build Status and Execution Trace
      :class-header: bg-light font-weight-bold

      **Tracking Log Registry Table**
      
      The tool logs active builds directly inside the tracking index table, stamping precise timeline records showing when the compiler action started and completed.
      
      .. image:: images/generate_rtl_actions4.png  
         :alt: Reviewing compilation job timestamps and localized file actions row options
         :align: center
         :width: 85%
      
      Click the **three vertical dots (ellipsis)** menu inside the *Action* column to interact with successful builds:
      
      * **Download:** Packages and streams the compiled hardware target straight to local machine storage *(availability matches your assigned group license privileges)*.
      * **Delete:** Permanently purges the targeted compilation container from your remote tracking workspace history log.

   .. grid-item-card:: Additional Item for Internal Users
      :class-header: bg-light font-weight-bold

     .. _task-window-branch-select:

     The task window interface includes a branch selector component presented in a structured **Grid View** layout, allowing authorized internal users to target and inspect specific code/configuration branches across active sessions.

      **Features & Access Control**
   

     * **Visibility:** 
       The branch selection grid is restricted and **visible only to internal users** belonging to authorized groups (`SignatureIP`, `SAdmins`, and designated internal groups). External or standard users will not see this panel.
     * **Default Branch:** 
       Upon initial load, the default active cell/selection reflects the active branch configured globally within the **admin page group settings**.
     * **Persistence:** 
       Any manual selection made by a user within the grid view is automatically saved to local storage (`localStorage`) to preserve their preference across sessions and window reloads.

     **Grid Layout & Configuration Reference**

     .. list-table:: Task Window Branch Selector Grid Properties
        :widths: 30 70
        :header-rows: 1
   
        * - Grid Property
          - Description
        * - **Component Layout**
          - Multi-column card/grid container within the task window control panel.
        * - **Authorized Roles**
          - ``SignatureIP``, ``SAdmins``, internal group members.
        * - **Storage Key**
          - ``task_window_selected_branch``
        * - **Fallback / Default**
          - Admin page group active branch configuration.

     **Usage & Grid Interaction**

     When an internal user opens a task window, the grid component performs the following operational flow:

     1. **Permission Check:** Validates if the user session contains internal privileges before rendering the grid view.
     2. **State Initialization:** Reads the preferred branch from storage or falls back to the admin-defined active branch, highlighting the corresponding grid card.
     3. **Event Triggering:** Dispatches a ``taskBranchChanged`` event whenever a user clicks/selects a new branch card in the grid, updating downstream task processes dynamically.

--------------------------------------------------------------------------------

Archive Extraction and File Inspection
==========================================

.. note::
   **Licensing Constraint:** Access to source code generation pipelines is governed dynamically by administrative group policies. If download controls appear locked, connect with your designated Group Administrator to audit your seat asset profile.

The compiler outputs all hardware files inside a compressed Tape Archive GNU zip container layout (``.tgz`` format). 

1. **Locate Download Target**
   Once your local download finishes, open your local workstation file manager and find the archive package inside your system **Downloads** directory path.
   
   .. image:: images/downloading_generatertl_results.png
      :alt: Location of the newly pulled tgz target bundle inside workstation downloads index
      :align: center
      :width: 80%

2. **Decompress the Archive Bundle**
   Right-click on the ``.tgz`` compressed icon block and select **Extract All** from your system contextual extraction properties. Pick an open target directory path inside the window prompt to write out the raw file contents.
   
   .. image:: images/extracting_file.png
      :alt: Extracting the tarball archive contents via local file system management wizard
      :align: center
      :width: 60%

--------------------------------------------------------------------------------

Compiled Output Directory Structures
=========================================

The exact file mapping tree unpacked inside your local folder depends entirely on your project type selection and the cycle-accuracy parameters toggled before compilation.

NC-NoC Output Sub-Directories
-----------------------------

.. dropdown:: 📁 Output Tree WITHOUT Cycle Accurate Model
   :open:

   When compiling standard hardware configurations without the reference model, the folder structure isolates core RTL macros from verification testbench dependencies.

   .. image:: images/generate_rtl_without_cycle_accurate.png
      :alt: Extracted folder map layout showing pure RTL system and testbench files
      :align: center
      :width: 60%

.. dropdown:: 📁 Output Tree WITH Cycle Accurate Model
   :open:

   Enabling cycle accuracy hooks inserts a dedicated simulation model tracking layer along with expanded behavioral descriptions to monitor link traffic latency.

   .. image:: images/generate_rtl_with_cycle_accurate.png
      :alt: Extracted folder directory layout showing added cycle-accurate subfolders
      :align: center
      :width: 60%


