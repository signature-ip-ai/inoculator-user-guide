===================================================
Project Collaboration and Shared Workspaces
===================================================

The **Shared Project** subsystem facilitates seamless cross-functional collaboration by letting you share individual Network-on-Chip (NoC) canvas configurations with other engineers. Project assets can be securely shared with members inside your immediate organizational team or with authorized external cross-functional groups.

--------------------------------------------------------------------------------

Initiating an Assets Share Request
======================================

Follow this sequential workflow to grant canvas access permissions to internal or external collaborators:

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Initialize the Sharing Modal
      :class-header: bg-light font-weight-bold

      **Dashboard Trigger**
      
      Navigate to your project dashboard layout. Identify the specific project tile you wish to distribute and click its dedicated **Share Project** icon.
      
      .. image:: images/projects_page-dashboard4.png
         :alt: Locating the primary sharing workspace trigger on the individual project tile layout
         :align: center
         :width: 85%

   .. grid-item-card:: Step 2: Allocate Permissions Across Tenant Boundaries
      :class-header: bg-light font-weight-bold

      **Internal Tenant Sharing**
      
      The interface launches an overlay window split into two target workspace directories. Under the default **Internal** tab view, select your local organizational directory peers to grant immediate access.
      
      .. image:: images/share_project-internal.png
         :alt: Share project modal displaying the primary internal organization user list directory
         :align: center
         :width: 75%

      .. rst-class:: mt-3
      
      **External Cross-Functional Collaborators**
      
      To bridge across distinct group clusters, toggle to the secondary **Collaborated** tab layer. This roster details approved external ecosystem partners clear to accept shared design matrices.
      
      .. image:: images/share_project-external.png
         :alt: Selecting external engineering partners through the secondary collaborated accounts group panel
         :align: center
         :width: 75%

   .. grid-item-card:: Step 3: Validate Active Sharing Assignments
      :class-header: bg-light font-weight-bold

      **Checkbox Controls & Seeding Badge**
      
      Tick the check box located immediately adjacent to a user's name to compile their access token. To strip access permissions after the fact, un-check the target entry. 
      
      Upon successful commit configuration, the main project card updates with an active numeric badge overlay reflecting the count of external users holding shared keys.
      
      .. image:: images/share_project-success2.png
         :alt: Project card interface showing the update badge tracking active recipient count matches
         :align: center
         :width: 75%

--------------------------------------------------------------------------------

Automated Transactional Email Lifecycles
=============================================

The identity registry engine dispatches automated notifications across the sharing lifetime to audit permissions modifications and preserve systemic data security boundaries.

.. dropdown:: Sharing Initialization Receipts
   :open:

   When authorization fields are saved, the system issues a confirmation email to the recipient's secure corporate address folder. This establishes a clear trail of collaboration control.

   .. image:: images/share_project-email_notification.png
      :alt: Sample transaction message verifying initial receipt of shared design access
      :align: center
      :width: 80%

.. dropdown:: Share Revocation and Discontinuation Notifications

   If the project owner clears a collaborator's check box within the share manager modal, the system instantly drops the target security block and fires an automated alert confirming the removal.

   .. image:: images/share_project-stop_sharing_project_notification.png
      :alt: System notification confirming sharing termination has executed successfully
      :align: center
      :width: 80%

.. dropdown:: Source Disposal Actions

   If the master project owner deletes the source canvas from their database index completely, the platform deletes all shared downstream instances and emails recipients to flag the final removal of the asset.

   .. image:: images/share_project-removed_project_notification.png
      :alt: Automated notice tracking full data purging events due to parent project deletion
      :align: center
      :width: 80%
