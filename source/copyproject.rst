======================================================
Copying a Project
======================================================

The **Copy Project** feature allows you to duplicate an existing Network-on-Chip (NoC) architecture design to seed a new project workspace. This workflow eliminates the need to manually rebuild complex subtopologies when you only need to modify branches of an established baseline design.

--------------------------------------------------------------------------------

Cross-User Sharing & Ownership Transfer
===========================================

The duplication engine fully supports copying projects owned by other collaborators within your organizational network. 

.. note::
   **Ownership Re-assignment:** Once a copy operation completes, the platform creates an entirely independent fork of the design. Complete file ownership and write privileges for the newly generated project transfer automatically to the user who performed the copy. The original source file remains entirely untouched.

--------------------------------------------------------------------------------

Project Duplication Workflow
================================

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Locate the Target Project Card
      :class-header: bg-light font-weight-bold

      **Dashboard Navigation**
      
      Open your primary workspace dashboard. Scroll to your personal repository panel or navigate to the **Shared Projects** tab to find the design card you wish to duplicate.
      
      .. image:: images/copy_project_dashboard2.png
         :alt: iNoCulator Main Workspace Dashboard Project Tracking Panel
         :align: center
         :width: 50%

   .. grid-item-card:: Step 2: Trigger the Duplication Control
      :class-header: bg-light font-weight-bold

      **Action Selection**
      
      Click the project options menu icon on the selected design card, or open the target project and click the **Copy Project** action control button located in the project's header workspace menu.
      
      .. image:: images/copy_project_cnoc.png
         :alt: Copy Project Action Menu Trigger Location
         :align: center
         :width: 50%

   .. grid-item-card:: Step 3: Configure the New Naming Matrix
      :class-header: bg-light font-weight-bold

      **Modal Inputs**
      
      The system will open the **Copy Project** confirmation modal box. Type a unique, descriptive identifier for your new design into the project name field, then click **Confirm** to complete the fork.
      
      .. image:: images/copy_project_modal.png
         :alt: Copy Project Naming Configuration Modal Overlay Box
         :align: center
         :width: 60%

--------------------------------------------------------------------------------

String Validations
=========================================

The database validation engine reviews your new title entry in real time. Your entry must comply with the formatting boundaries listed below to avoid generation errors:

.. warning::
   **Naming Rule Enforcement Matrix:**
   
   * **Casing Syntax:** Capitalize only the first letter of each word string segment. Fully uppercase text blocks will fail validation checking.
   * **Allowed Characters:** Input fields accept standard **alphanumeric characters** (including standard language extensions like **ñ** and **Ñ**) and standard single character spaces.
   * **Prohibited Elements:** Special characters, punctuation strings, and symbols (e.g., ``@``, ``#``, ``$``, ``-``, ``/``) are strictly forbidden.
