==================================================
Deleting a Project
==================================================

The **Delete Project** routine permanently removes a Network-on-Chip (NoC) design workspace and all of its associated subtopologies, address space mapping configurations, and structural metadata from the system database.

--------------------------------------------------------------------------------

Project Deletion Workflow
============================

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Trigger the Deletion Action
      :class-header: bg-light font-weight-bold

      **Dashboard Target Selection**
      
      Navigate to your main user Dashboard. Locate the specific project card you wish to remove and click the **Delete Project** trash icon control found in the project's option alignment cluster.
      
      .. image:: images/delete_project2.png
         :alt: Locating the Delete Project trash icon button on the dashboard project card
         :align: center
         :width: 60%

   .. grid-item-card:: Step 2: Fulfill the Confirmation Prompt
      :class-header: bg-light font-weight-bold

      **Modal Dialog Verification**
      
      A modal confirmation dialog window will slide into view to safeguard against accidental clicks. Review the project title listed in the dialog box carefully to verify it matches your target, then click the red **Delete** confirmation button to execute the purge.
      
      .. image:: images/delete_project-confirmation_window.png
         :alt: Project deletion modal window prompt requiring explicit click validation
         :align: center
         :width: 50%

--------------------------------------------------------------------------------

Critical Operational Checklist
===================================

.. error::
   **Project deletion is absolute and entirely irreversible.** The system cannot recover a design once its database entry has been wiped from the server cluster. 

Before committing to a canvas or repository purge, ensure your engineering team checks off the following mandatory workspace protocols:

* **Archive Hard Backups:** Export your design metadata or capture essential layout sheets. Ensure that any critical floorplanning data is archived locally if there is any chance it will be reviewed for future product revisions.
* **Double-Check Target Name Identifiers:** Carefully verify that you have targeted the exact project instance intended for destruction. In multi-cluster setups where project forks use closely matching names, a mistake can overwrite weeks of work.
* **Coordinate Shared Dependencies:** Communicate directly with your cross-functional engineering teams prior to running a deletion routine. Ensure that no other hardware collaborators or verification scripts are actively relying on that specific project workspace or shared fork link for their active development branches.
