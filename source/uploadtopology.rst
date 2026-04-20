Uploading a Topology 
========================================================


Using Excel file 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
To design a topology, uploading an excel file with set values will generate a topology instantly. Follow the steps below to generate a topology from an excel file. 
Prepare the Excel file with the desired values. The current template file name is 'nc-noc_topology_generator_v1.4,' which is used for designing a topology from the Excel file. Instructions are included inside the file that user may follow. Sample values that need to modify are: 


.. image:: images/uploading_topology-excel_sheet.png
  :alt: uploading_topology-excel_sheet
  :align: center

After setting up the excel sheet, go to inoculator.ai/login to log in and go to Dashboard. In Dashboard, there is a huge ‘+’ icon for creating a project. Click that icon to proceed. 


.. image:: images/uploading_topology-create_project_icon3.png
  :alt: uploading_topology-create_project_icon
  :align: center

After clicking that icon, ‘Create Project’ dialog box will appear. User will find a button to upload the file. Click ‘Upload Topology XLSX file’. 

.. image:: images/uploading_topology-create_project_prompt2.png
  :alt: uploading_topology-create_project_prompt
  :align: center

After the user clicks the button, the file explorer of the machine will be displayed, allowing the user to select the desired file to upload.

.. image:: images/uploading_topology-selecting_file3.png
  :alt: uploading_topology-selecting_file
  :align: center

Once user has selected the file to upload, click ‘Create’ to proceed with creation of project. 

.. image:: images/uploading_topology-generating_topology3.png
  :alt: uploading_topology-generating_topology
  :align: center

After verification, if the generated file has no issues, it will proceed to the creation of the project. The grid view of iNoCulator must be displayed, allowing the user to see the topology. Each component must be editable, including the settings of each. 

.. image:: images/uploading_topology-successful_generation.png
  :alt: uploading_topology-successful_generation
  :align: center


Using JSON file 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

From your computer, select any JSON file that corresponds to an NC-NoC project.


.. image:: images/upload_json_file.png
  :alt: upload_json_file
  :align: center

When the JSON file is updated to match the current schema, the project can be successfully uploaded to the Inoculator web.

.. image:: images/upload_json_success.png
  :alt: upload_json_success
  :align: center

However, if the JSON file is outdated and not updated, the upload may fail

.. image:: images/upload_json_fail.png
  :alt: upload_json_fail
  :align: center

Note that when uploading a JSON file, the ‘JSON File’ option should be visible on the button. If it is not visible, please contact the admin for configuration. 
