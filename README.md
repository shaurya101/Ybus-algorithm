# Ybus-algorithm
Formation of Y-Bus of the attached test system by using Bus Inspection Method.

BASIC THEORY
------

Diagnol Elements 
Y11 (for example) = 1/Impedances(for all buses connected) + Half Line Admittances + Self Admittance

Non-Diagnol Elements 
Y12 = -y12 = -y21 (ie negative of admittance of the connected buses)

The Ybus /Zbus matrix constitutes the models of the passive portions of the power network. Ybus matrix is often used in solving load flow problems. It has gained widespread applications owing to its simplicity of data preparation and the ease with which the bus admittance matrix can be formed and modified for network changes. Of course, sparsity is one of its greatest advantages as it heavily reduces computer memory and time requirements. In short circuit analysis, the generator and transformer impedances must also be taken into account. In contingency analysis, the shunt elements are neglected, while forming the Z-bus matrix, which is used to compute the outage distribution factors.
                This can be easily obtained by inverting the Y-bus matrix formed by inspection method or by analytical method. The impedance matrix is a full matrix and is most useful for short circuit studies. Initially, the Y-bus matrix is formed by inspection method by considering line data only. After forming the Y-bus matrix, the modified Y-bus matrix is formed by adding the generator and transformer admittances to the respective diagonal elements and is inverted to form the Z-bus matrix.
            The performance equation for a n-bus system in terms of admittance matrix can be written as,
                                            
            I = Ybus.V
The admittances Y11, Y12,… Y1n are called the self-admittances at the nodes and all other admittances are called the mutual admittances of the nodes.

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
