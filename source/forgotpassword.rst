===================================================================================================================
Account Recovery and Password Reset
===================================================================================================================

The **Forgot Password** self-service pipeline provides an automated, secure recovery path to restore platform access if you have misplaced your login credentials. 

--------------------------------------------------------------------------------

Self-Service Credential Reset Procedure
===========================================

Follow this sequence to clear your lost credential keys and securely nominate a new platform password:

.. grid:: 1
   :gutter: 3

   .. grid-item-card:: Step 1: Submit Your Identity Token
      :class-header: bg-light font-weight-bold

      **Accessing the Request Portal**
      
      Navigate to the main **Sign In** landing page and click the **Forgot Password** link. Enter your active corporate email address into the input field and click the **Send Reset Link** action button.
      
      .. image:: images/reset_your_password.png
         :alt: Forgot Password email identity submission form interface
         :align: center
         :width: 65%

   .. grid-item-card:: Step 2: Intercept the Security Handshake Email
      :class-header: bg-light font-weight-bold

      **Verification Verification Link**
      
      The system verification layer will process your request and dispatch an automated transaction token to your inbox. Open the message and click the **Reset your password** primary button.
      
      .. image:: images/forgot_password-email_notification2.png
         :alt: Automated password reset confirmation email notification block layout
         :align: center
         :width: 80%

      *(Note: Reset link strings carry a strict security timeout stamp. Complete the handshake promptly to prevent token expiration).*

   .. grid-item-card:: Step 3: Nominate and Confirm New Credentials
      :class-header: bg-light font-weight-bold

      **Database Password Update**
      
      The email token will securely redirect your browser to the password entry dashboard. Input your new password string into both fields, ensuring it satisfies your enterprise complexity rules, then click **Reset**.
      
      .. image:: images/set_new_password.png
         :alt: Setting new secure account password criteria fields inside the reset form
         :align: center
         :width: 65%

--------------------------------------------------------------------------------

Verification of Success
===========================

Upon clicking the final **Reset** button, the authentication engine commits your updated credential string to the master database. 

The application will immediately redirect you back to the primary **Sign In** portal. This automatic routing change serves as verification that your password update was written successfully; you can now log in using your fresh active credentials.
