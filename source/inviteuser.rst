===================================
Administrative User Invitation
===================================

The **Invite User** protocol allows platform administrators to transition an onboarding applicant from the pending verification queue into an authorized organizational group slot. 

--------------------------------------------------------------------------------

🔒 Administrative Provisioning Pipeline
=========================================

.. note::
   **Access Restriction:** The creation and dispatch of registration tokens are restricted exclusively to accounts possessing **Signature IP Administrator** or designated **Group Admin** clearance privileges.

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Application Review & Audit
      :class-header: bg-light font-weight-bold

      **Administrative Verification Handler**
      
      When a system applicant submits a *Request Access* form, the platform issues an automated notification flag to all active iNoCulator administrators. The team reviews the applicant's corporate eligibility, domain constraints, and site-seat allocations.
      
      *(For granular verification panel instructions, please consult the dedicated **Admin User Guide**).*

   .. grid-item-card:: Step 2: Dispatch Security Token Invite
      :class-header: bg-light font-weight-bold

      **Email Token Generation**
      
      Upon verifying applicant eligibility, the administrator triggers the token generation script. The system compiles a unique, time-sensitive security handshake link and dispatches an official onboarding transmission to the applicant's registered inbox.
      
      .. image:: images/invite_user-invitation_email.png
         :alt: Official Signature IP platform onboarding invitation and activation token email template
         :align: center
         :width: 80%

--------------------------------------------------------------------------------

⚖️ Legal Compliance & Activation Frameworks
============================================

The automated notification email functions as a formal onboarding gateway. To satisfy international corporate compliance rules and data protection boundaries, the transmission hard-links directly to your legal infrastructure records:

* **Terms of Service (ToS):** Establishes acceptable cloud utilization limits and interface access rules.
* **Privacy Policy:** Outlines data protection handling, cookie tracking matrices, and user profile isolation protocols.
* **Software Evaluation Agreement (SEA):** Dictates explicit legal licensing constraints, hardware IP evaluation boundaries, and tool utilization parameters for the current product release lifecycle.

.. important::
   **Action Required for Activation:**
   The onboarding engineer must click the primary **Activate Account** link embedded within the text block. This secure webhook bridges the client browser back to the central authentication registry, establishing their personal profile password variables.
