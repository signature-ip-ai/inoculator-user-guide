Integration Project 
---------------------------------

Integration Project is another type of project that users can create in Inoculator. It allows users to integrate Coherent NoC (C-NoC) and Non-Coherent NoC (NC-NoC) topologies into a single project.

To create an Integration Project, select Integration from the Project Type dropdown.

.. image:: images/integration_projecttype.png
   :alt: Integration Project Type
   :align: center
   :width: 80%

Open the Integration Project. A blank canvas will be displayed.

.. image:: images/integration_blank_canvas.png
   :alt: Integration Blank Canvas
   :align: center
   :width: 80%

To add topologies, click the “Open Modal” button in the left panel. This will open a modal displaying all the Coherent NoC and Non-Coherent NoC projects available to the user. Select the project you want to integrate.

.. image:: images/integration_import_topologies.png
   :alt: Integration Import Topologies
   :align: center
   :width: 80%

All selected topologies will be displayed on the canvas.

.. image:: images/integration_with_topologies.png
   :alt: Integration with Topologies
   :align: center
   :width: 80%


Non-Coherent NoC Project will have a dark blue router outline, with Initiators displayed on the left ports, Target devices on the right ports, and Bridges on the bottom. Virtual Target Devices and the Default Slave will not be displayed.

Coherent NoC Project will have a cyan-colored router outline, with CHI RN and AXI Master displayed on the right ports, CHI SN and AXI Slave on the left ports, and Bridges on the bottom.
