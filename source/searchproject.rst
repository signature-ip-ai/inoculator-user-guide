========================================
Project Search Infrastructure
========================================

The **Search Project** utility delivers a real-time indexing engine across your project workspace. This feature allows design teams to instantly isolate targeted Network-on-Chip (NoC) canvas configurations, maximizing navigation speed when managing large-scale, multi-die project portfolios.

--------------------------------------------------------------------------------

Query Execution & Tab Support
=================================

The lookahead search system is embedded natively across your primary project partitions. You can execute localized keyword queries within both the **Personal Projects** repository and the **Shared Projects** collaboration space.

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Input Keyword Tokens
      :class-header: bg-light font-weight-bold

      **Progressive Filtering**
      
      Locate the global search input block at the top of your project index grid. Begin typing your target project name or specific architectural keywords. The workspace automatically filters rows on-the-fly, dropping non-matching entries instantly.
      
      .. image:: images/search_project_page4.png
         :alt: Active search input field dynamically filtering out matching project cards
         :align: center
         :width: 85%

   .. grid-item-card:: Step 2: Verify Real-Time Sub-String Highlights
      :class-header: bg-light font-weight-bold

      **Visual Sub-string Matching**
      
      To speed up index audits, the application dynamically highlights matching characters or whole keyword phrases inside the project title blocks as you type.
      
      .. image:: images/search_project_page-highlight3.png
         :alt: Detail view of character matching with active color highlights on project name strings
         :align: center
         :width: 75%

--------------------------------------------------------------------------------

Dynamic Indexing Capabilities
=================================

.. hint::
   **Character-Level Lookahead Execution:**
   The parsing engine does not require an explicit ``Enter`` key stroke or ``Submit`` button engagement. The UI redraws your data tables instantly with every keystroke, allowing you to cycle through project variants using short partial nomenclature codes (such as typing ``NC_`` to immediately group all Non-Coherent topologies).
