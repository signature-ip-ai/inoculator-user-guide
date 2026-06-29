.. iNoCulator User Guide documentation master file, template initialized
   by sphinx-quickstart on Mon Jan 13 00:01:51 2025.
   Cleaned, optimized, and structured with professional enterprise layout semantics.

================================================================================
iNoCulator Platform Documentation
================================================================================

Welcome to the definitive system administration and engineering design manual for **iNoCulator**—the comprehensive Network-on-Chip (NoC) architectural workspace tool. This documentation environment guides hardware design leads, verification engineers, and workspace managers through deployment pipelines, validation paradigms, and RTL generation procedures.

--------------------------------------------------------------------------------

.. toctree::
   :maxdepth: 2
   :caption: I. Introduction

   introduction

--------------------------------------------------------------------------------

.. toctree::
   :maxdepth: 2
   :caption: II. Core Authentication & Platform Access

   requestaccess
   inviteuser
   activateaccount
   login
   otp
   logout
   forgotpassword

.. toctree::
   :maxdepth: 2
   :caption: III. Identity Validation & Security Exceptions

   expiredaccount
   suspendedaccount
   invalidcredentials
   duplicateemail
   expiredlink

--------------------------------------------------------------------------------

.. toctree::
   :maxdepth: 2
   :caption: IV. Workspace Topology Pipelines

   uploadtopology

.. toctree::
   :maxdepth: 2
   :caption: V. Non-Coherent NoC (NC-NoC) Architectures

   createprojectncnoc
   componentsandexplorer
   routerconfiguration
   initiatorconfiguration
   targetconfiguration
   addressinterleaving
   virtualconfiguration
   bridgeconfiguration
   subtopologyconfiguration

.. toctree::
   :maxdepth: 2
   :caption: VI. Coherent NoC (C-NoC) Architectures

   createprojectcnoc
   cnoctopology
   cnocdevice
   cnocrouter
   cnocsystemconfig
   c2cbridge
   cnoctopologyvalidation
   cnocinterleaving
   cnocaddressmap

--------------------------------------------------------------------------------

.. toctree::
   :maxdepth: 2
   :caption: VII. Floorplanning, Validation, & Automation Build Pipelines


   accessmap
   addressmap
   topologyvalidation
   autoroute
   generatertlandtb
   simulation
   implement

--------------------------------------------------------------------------------

.. toctree::
   :maxdepth: 2
   :caption: VIII. Project Life-Cycle & Collaborative Administration

   copyproject
   floorplan
   autoplace
   sharedproject
   deleteproject
   searchproject
   projectspage

--------------------------------------------------------------------------------

.. toctree::
   :maxdepth: 1
   :caption: IX. Knowledge Base & References

   faqs
   appendix

--------------------------------------------------------------------------------

Indices and Tables
==================

Use the automated platform indices below to quickly query specific hardware component terms, configuration routines, or validation error tracking metrics:

* :ref:`genindex`
* :ref:`search`
