Generating RTL and Testbench
=========================================================

1. NC-NoC
----------------------------------------

This feature generates RTL files and a testbench for the created NC-NoC topology.
To use it, click the ‘Generate RTL’ button in the Action Bar. An optional checkbox labeled ‘Include Cycle Accurate Model’ allows you to include the model in the generation—tick the checkbox to include it, or leave it unticked to exclude it.

Then, click the ‘Generate Design’ button to start the process. The results, including timestamps for when the action started and completed, will be displayed in the same table.

.. image:: images/generate_rtl3.png
  :alt: generate_rtl.png
  :align: center
 

.. image:: images/generate_rtl_files_and_testbench3.png  
  :alt: generate_rtl_files_and_testbench
  :align: center


.. image:: images/generate_rtl_actions.png  
  :alt: generate_rtl_actions
  :align: center


Each result includes an ‘Action’ column, where the user can choose to either ‘Download’ or ‘Delete’ the result. The download option depends on the license assigned to the user’s group.



2. C-NoC
------------------------------------------------

This feature generates RTL files and a testbench for the created C-NoC topology.
To use it, click the ‘Generate RTL’ button in the Action Bar. An optional checkbox labeled ‘Include Cycle Accurate Model’ allows you to include the model in the generation—tick the checkbox to include it, or leave it unticked to exclude it.


Then, click the ‘Generate Design’ button to start the process. The results, including timestamps for when the action started and completed, will be displayed in the same table.


.. image:: images/c-noc_generateRTL.png
  :alt: c-noc_generateRTL.png
  :align: center


.. image:: images/c-noc_generateRTL3.png
  :alt: c-noc_generateRTL2.png
  :align: center


.. image:: images/c-noc_generateRTL_actions.png  
  :alt: c-noc_generateRTL_actions
  :align: center


Each result includes an ‘Action’ column, where the user can choose to either ‘Download’ or ‘Delete’ the result. The download option depends on the license assigned to the user’s group.



3. Download and viewing JSON
-------------------------------------------

This feature is available depending on account accessibility. Please contact your group admin regarding this function, as it is managed on the group-admin side.

(For C-NoC and NC-NoC) Once the button is enabled and functioning, it means the generated RTL and testbench can be downloaded to your machine for viewing. The downloaded file will be in .tgz format and must be extracted before the individual files can be viewed.

1. Downloaded file will be stored in Downloads folder of your machine. 

.. image:: images/downloading_generatertl_results.png
  :alt: downloading_generatertl_results
  :align: center

2. Right-click the file and select 'Extract All.' A new window will appear, allowing you to choose the folder name where all the extracted files will be saved.

.. image:: images/extracting_file.png
  :alt: extracting_file
  :align: center

3. After extracting, a new folder will be displayed and all the files downloaded will be shown. 

For NC-NoC generatedRTL files:


**without Cycle Accurate**

.. image:: images/generate_rtl_without_cycle_accurate.png
  :alt: generate_rtl_without_cycle_accurate
  :align: center


**with Cycle Accurate**

.. image:: images/generate_rtl_with_cycle_accurate.png
  :alt: generate_rtl_with_cycle_accurate
  :align: center


For C-NoC generatedRTL files:

**without Cycle Accurate**

.. image:: images/generate_rtl_files_c_noc-without_cycle_accurate.png
  :alt: generate_rtl_files_c_noc-without_cycle_accurate
  :align: center



