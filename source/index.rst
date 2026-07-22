==================================
Inoculator User Guide
==================================

Welcome to the official iNoCulator documentation. iNoCulator is a comprehensive design and configuration platform for Network-on-Chip (NoC) architectures, supporting both NC-NoC and C-NoC workflows.

Use the quick links below to jump straight to your workspace or explore the full navigation in the sidebar.

--------------------------------------------------------------------------------

.. grid:: 3
   :gutter: 3

   .. grid-item-card:: 🚀 Getting Started
      :link: getstarted
      :link-type: doc

      New to iNoCulator? Set up your environment, manage projects, and learn the basic features.
      
      * :doc:`introduction`
      * :doc:`getstarted`
      * :doc:`projectspage`
      * :doc:`quicklinks`

   .. grid-item-card:: ⚙️ NC-NoC Workflow
      :link: createprojectncnoc
      :link-type: doc

      Step-by-step documentation for configuring, simulating, and implementing NC-NoC designs.

      * :doc:`createprojectncnoc`
      * :doc:`uploadtopology`
      * :doc:`systemconfig`

   .. grid-item-card:: 🌐 C-NoC Workflow
      :link: createprojectcnoc
      :link-type: doc

      Complete guide to C-NoC workflows, from system configuration to final RTL generation.

      * :doc:`createprojectcnoc`
      * :doc:`cnocsystemconfig`
      * :doc:`cnoctopology`

.. grid:: 3
   :gutter: 3

   .. grid-item-card:: 🔑 Account & Access
      :link: login
      :link-type: doc

      Manage your user profile, request access, configure OTP, and manage team invitations.

      * :doc:`login`
      * :doc:`requestaccess`
      * :doc:`otp`
      * :doc:`inviteuser`

   .. grid-item-card:: 🛠️ Troubleshooting & FAQ
      :link: faqs
      :link-type: doc

      Resolve credential errors, handling expired accounts, and find answers to common questions.

      * :doc:`expiredaccount`
      * :doc:`expiredlink`
      * :doc:`duplicateemail`
      * :doc:`forgotpassword`

   .. grid-item-card:: 📚 Resources & History
      :link: appendix
      :link-type: doc

      Access the appendix, quick links, and review the framework modification history.

      * :doc:`appendix`
      * :doc:`quicklinks`
      * :doc:`modificationhistory`

--------------------------------------------------------------------------------

.. All of your original content is kept here intact. By adding `:hidden:`, 
   the full nested tree populates your sidebar beautifully, but doesn't 
   clutter your main landing page.

Table of Contents 
======================================

.. toctree::
   :maxdepth: 2
   :caption: Overview
   

   introduction
   getstarted
   projectspage

.. toctree::
   :maxdepth: 2
   :caption: Account Management
   

   requestaccess
   inviteuser   
   activateaccount
   login
   otp
   logout

.. toctree::
   :maxdepth: 2
   :caption: Project Management

   sharedproject
   deleteproject
   searchproject
   exportpackage
   copyproject
   

.. toctree::
   :maxdepth: 2
   :caption: NC-NoC Design Workflow

   createprojectncnoc
   uploadtopology
   componentsandexplorer
   routerconfiguration
   initiatorconfiguration
   targetconfiguration
   addressinterleaving
   virtualconfiguration
   bridgeconfiguration
   subtopologyconfiguration
   accessmap
   addressmap
   topologyvalidation   
   autoroute
   generatertlandtb
   simulation
   implement
   floorplan
   autoplace
   systemconfig
   registermap


.. toctree::
   :maxdepth: 2
   :caption: C-NoC Design Workflow
   

   createprojectcnoc
   cnoctopology
   cnocdevice
   cnocrouter
   cnocsystemconfig
   c2cbridge
   cnoctopologyvalidation
   cnocinterleaving
   cnocaddressmap
   
   cnocregistermap
   cnocgeneratertlandtb

.. toctree::
   :maxdepth: 2
   :caption: Troubleshooting
   

   invalidcredentials
   forgotpassword
   duplicateemail
   expiredaccount
   expiredlink
   suspendedaccount

.. toctree::
   :maxdepth: 2
   :caption: Support & Resources
   

   faqs
   quicklinks
   appendix

.. toctree::
   :maxdepth: 1
   :caption: Reference
   

   modificationhistory
