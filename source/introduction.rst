==========================================================================
Introduction
==========================================================================

Welcome to the **iNoCulator** User Guide. This section establishes the architectural baseline, core technical vocabulary, targeted engineering roles, and legal frameworks governing the use of the platform.

--------------------------------------------------------------------------------

.. _terminologies:

📖 A. Terminologies 
===========================================

The following definition matrix establishes the technical abbreviations and architectural primitives utilized throughout the iNoCulator interface, configuration files, and validation modules:

.. list-table:: Platform Definition and Abbreviation Matrix
   :widths: 20 80
   :header-rows: 1
   :stub-columns: 1

   * - Term
     - Architectural Definition & Context
   * - **AHB**
     - Advanced High-performance Bus (AMBA standard protocol for high-bandwidth, low-latency system-on-chip designs).
   * - **APB**
     - Advanced Peripheral Bus (AMBA standard optimized for minimal power and simplified interface design on lower-speed peripherals).
   * - **AXI**
     - Advanced Extensible Interface (AMBA high-performance pipeline specification supporting separate address/data phases and outstanding transaction streams).
   * - **Bridge**
     - A specialized configuration module used to couple independent Routers operating across distinct, asynchronous subtopologies or clock domains.
   * - **Egress Port**
     - A dedicated router exit junction mapped to a destination Target (Slave) device socket interface.
   * - **Flit**
     - Flow Control Digit. The atomic, line-level fundamental sizing packet segment utilized to govern link-layer backpressure and serialization.
   * - **Ingress Port**
     - A dedicated router entry junction mapped from an originating Initiator (Master) device socket interface.
   * - **Link**
     - A dedicated internal interconnect routing channel that binds one internal router mesh block directly to another.
   * - **NC-NoC**
     - Non-Coherent Network-on-Chip. A transport topology layout composed of routers managing memory-mapped addresses without physical cache-coherence hardware monitoring.
   * - **Router**
     - The foundational packet-forwarding and scheduling building block of the network-on-chip routing fabric canvas.
   * - **Sig-Native**
     - A proprietary, high-efficiency lightweight signaling transport protocol native to Signature IP's customized NC-NoC design suites.
   * - **Subtopology**
     - A fully isolated subset or localized cluster partition within a master global design canvas layout.
   * - **SRAM**
     - Static Random-Access Memory. Volatile hardware on-chip storage matrices utilized inside buffers or localized cache instances.
   * - **Topology**
     - The formal geometric spatial layout, interconnect scheme, and routing architecture governing component paths inside the active design.

--------------------------------------------------------------------------------

.. _user-description:

👥 B. Target User Profiles
====================================

The iNoCulator application is explicitly provisioned to cross-link workflows among multi-disciplinary hardware and software development paths:

.. grid:: 2
   :gutter: 3

   .. grid-item-card:: 🛠️ Hardware Design & Verification Leads
      :class-header: bg-light font-weight-bold

      * **Topology Architects:** Engineers seeking to draft, balance, and optimize physical-aware on-chip networks.
      * **Performance Analyzers:** Verification profiles validating pipeline throughput, trace latency curves, and bus saturation limits.
      * **Onboarding Trainees:** Systems engineers looking to familiarize themselves with automated RTL generation flows.

   .. grid-item-card:: 💻 Downstream Systems & Enterprise Operations
      :class-header: bg-light font-weight-bold

      * **Software & Firmware Engineers:** Developers seeking early visibility into systemic address mapping matrices and memory interleaving configurations to write platform boot loaders.
      * **IP Procurement & Sales Specialists:** Strategic professionals orchestrating group seat allocations or evaluating core EDA tooling capabilities for internal infrastructure inclusion.

--------------------------------------------------------------------------------

.. _overview:

🌐 C. Architectural Tool Overview
===================================

The **iNoCulator** platform delivers a centralized, web-accessible workbench optimized for interactive, full-cycle Network-on-Chip (NoC) architectural definition. By replacing brittle static spreadsheets with an active, canvas-based graph engine, the application dynamically manages the binding paths, buffer depths, and protocol translations between heterogeneous collections of Initiators, Routers, Targets, and Bridges, guaranteeing error-free compilation to synthesizable RTL code blocks.

--------------------------------------------------------------------------------

.. _confidentiality-notice:

🔒 D. Proprietary Status & Confidentiality Notice
===================================================

This document contains proprietary information that is the exclusive intellectual property of Signature IP. The specifications, instructions, and descriptions enclosed herein are intended solely for authorized personnel registered under verified tenant accounts. 

.. warning::
   **Distribution and Replication Prohibited:** Unauthorized extraction, distribution, digital copying, or public disclosure of this document, in whole or in part, is strictly forbidden without explicit, prior written authorization from Signature IP.

All rights to underlying structural concepts, processing engines, and terminology systems are strictly reserved by Signature IP. This user guide serves informational purposes exclusively and is subject to continuous modification across platform release milestones without prior notice obligation.

By interacting with this manual or its accompanying workspaces, you consent to fulfill the complete confidentiality boundaries outlined above. For clarification inquiries, document distribution permissions, or targeted technical support tickets, contact the administrators at: contact@signatureip.ai.
