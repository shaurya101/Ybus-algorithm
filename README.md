# Ybus-algorithm
Formation of Y-Bus of the attached test system by using Bus Inspection Method.

BASIC THEORY
------

Diagnol Elements 
Y11 (for example) = 1/Impedances(for all buses connected) + Half Line Admittances + Self Admittance

Non-Diagnol Elements 
Y12 = -y12 = -y21 (ie negative of admittance of the connected buses)

General Method (Ybus)
--------------
  
  - Input the admittances
  - Solve seperately for Diagnol Elements and Non-Diagnol Elements using 2 for loops
  - loops will run equal to the number of buses
  - All elements (including diagnol) of the loop will only need to update once
  
  
Method 1 (YbusCode1)
--------

 - Only 1 for loop required
 - loop will run equal to the number of branches (shunt admittance in those branches)
 - Diagnol elements will keep on updating till all of the different line shunt admittances are added
 - Self admittance to be added once 
