=============================================================
Frequently Asked Questions (FAQ)
=============================================================

This knowledge base addresses common questions regarding account provisioning, onboarding workflows, validation rules, and authentication troubleshooting for the iNoCulator platform.

--------------------------------------------------------------------------------

.. rubric:: 🔐 Account Provisioning & Access Controls
   :class: h3

.. dropdown:: Can I use iNoCulator without an account?
   :open:

   **No.** Anonymous or unauthenticated access is strictly prohibited. To access the iNoCulator network design canvas, simulation engine, and topology databases, every engineer must possess an authorized, active user profile.

.. dropdown:: Can I create an account freely?
   :open:

   **No.** To maintain secure development environments, the platform does not support open or unverified self-registration. While anyone can submit an access request, a **Signature IP Administrator** must manually review, audit, and approve the submission before an active security token is generated.

.. dropdown:: How do I initialize a new user account?
   :open:

   To kick off the official onboarding pipeline, complete the following validation sequence:
   
   1. Navigate to the primary login portal and click the **Request Access** hyperlink.
   2. Fulfill all mandatory corporate profile fields within the submission modal, then click the **Request Access** button.
   3. The system will immediately dispatch an automated transaction receipt to your inbox confirming that your application has entered the administrative review queue.
   4. Once a **Signature IP Administrator** validates your organizational credentials, a secure, time-limited activation link will be sent to your registered corporate email to finalize setup.

--------------------------------------------------------------------------------

.. rubric:: 📨 Troubleshooting Communications & Identity Conflicts
   :class: h3

.. dropdown:: I did not receive my registration confirmation email. What should I do?
   :open:

   * **Audit Mail Filters:** First, inspect your email client's *Spam*, *Junk*, or corporate quarantine folders. Security firewalls occasionally misroute automated transaction vectors.
   * **Re-trigger the Request Handshake:** If no message arrives within 15 minutes, return to the landing portal and re-submit the registration form to verify your address string was free of typos.
   * **Escalate to IT Support:** Connect directly with your local systems administrator or open a ticket with the **Signature IP Support Desk** to verify that your domain isn't explicitly dropping incoming platform tokens.

.. dropdown:: Can I map a single email address across multiple system accounts?
   :open:

   **No.** The database architecture enforces a strict 1:1 unique identity mapping constraint. A single email string can only be bound to an individual profile block. If your engineering workflows require access to a distinct tenant layer or corporate sandbox fork, you must register using an independent, valid email address.

--------------------------------------------------------------------------------

.. rubric:: 🛠️ Profile Exceptions & Account Suspensions
   :class: h3

.. dropdown:: What should I do if I run into validation errors during account setup?
   :open:

   Double-check that all required input fields are fully populated and comply with string constraints (such as alphanumeric project naming limits or corporate domain filters). If the submission script continues to fail or crash, capture a screenshot of the exception code and email it directly to our infrastructure support specialists.

.. dropdown:: My profile states it is Locked or Suspended. How do I restore access?
   :open:

   Profile locks are automatically triggered by protective firewall layers (such as consecutive invalid password attempts) or security administration directives. 
   
   .. error::
      **Self-Service Bypass Prohibited:** Locked or suspended user accounts cannot be overridden using standard password recovery links. 
      
      You must connect directly with the **Signature IP Support Team** or your designated site administrator. They will audit the security logs to determine why the profile was flagged, confirm your identity, and manually flip your database status back to an active state.
