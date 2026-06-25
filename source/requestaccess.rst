===================================================
Account Onboarding and Access Requests
===================================================

New users must complete a formal account onboarding request and identity verification cycle to gain clearance for the iNoCulator platform workspace. Each request undergoes administrator evaluation before a secure workspace environment is initialized.

--------------------------------------------------------------------------------

🗺️ Entry Vectors & Submission Workflow
=========================================

The platform provides two distinct entry avenues to initiate an access request. Follow these sequential steps to navigate to the registration form and submit your profile:

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Locate an Entry Point Anchor
      :class-header: bg-light font-weight-bold

      **Primary Portal Navigation**
      
      If you are arriving at the unauthenticated root landing domain, click the prominent **Get Started** button situated in the central hero banner workspace.
      
      .. image:: images/request_access-home_page2.png
         :alt: Location of the Get Started button anchor on the public iNoCulator homepage
         :align: center
         :width: 80%

      .. rst-class:: mt-3
      
      **Alternative Gateway Option**
      
      If you are already viewing the primary login credential panel, click the secondary **Request Access** text button hyperlink to launch the registration view.
      
      .. image:: images/request_access-sign_in_page4.png
         :alt: Alternative Request Access hyperlink location on the user sign-in box interface
         :align: center
         :width: 60%

   .. grid-item-card:: Step 2: Populate the Access Authorization Form
      :class-header: bg-light font-weight-bold

      **Profile Specifications**
      
      Fill out all mandatory corporate fields on the **Request Access** page, providing accurate structural organizational data to avoid administrative request rejection.
      
      .. image:: images/request_access_page_update.png
         :alt: Expanded Request Access input form layout detailing identity information fields
         :align: center
         :width: 65%

--------------------------------------------------------------------------------

🔒 Input Validation Constraints & Limitations
=============================================

.. important::
   The identity management sub-system enforces strict structural validation regex rules during form string parsing. Submissions violating these parameters will result in an immediate input validation error:

* **Name Title-Casing:** The **First Name** and **Last Name** strings accept capitalizations *only on the initial letter* of each name fragment (e.g., ``Jane Doe``, not ``JANE DOE``).
* **Corporate Domain Isolation:** The **Email Address** field strictly mandates a verified corporate business email structure containing a legitimate ``@domainname`` suffix block. Public webmail domains (e.g., Gmail, Yahoo) are blocked.
* **Alphanumeric Sanitization:** Text fields accept standard alphanumeric keys, spaces, and specific regional characters like **ñ** and **Ñ**. No special symbol characters or punctuation scripts are permitted in the text fields.

--------------------------------------------------------------------------------

📩 Post-Submission Review and Email Validation
================================================

Once the database processes your submission, the interface transitions to an administrative hold state while asynchronous notification routines route the request details to your workspace managers:

.. grid:: 2
   :gutter: 3

   .. grid-item-card:: 🖥️ On-Screen Intercept Message
      :class-header: bg-light font-weight-bold

      The active browser tab immediately locks and renders a confirmation overlay, verifying that your registration payload has entered the global administrator ticket queue for structural evaluation.
      
      .. image:: images/request_access-confirmation_page3.png
         :alt: Intercept modal confirmation message notifying the user of pending administrator evaluation
         :align: center
         :width: 85%

   .. grid-item-card:: 📬 Account Activation Link
      :class-header: bg-light font-weight-bold

      Upon administrator validation and approval, an invitation message lands in your corporate inbox. This dispatch includes a unique, secure activation link to initialize your credentials.
      
      .. image:: images/request_access-confirmation_message3.png
         :alt: Layout structure of the automated registration invite message with an active link block
         :align: center
         :width: 85%
