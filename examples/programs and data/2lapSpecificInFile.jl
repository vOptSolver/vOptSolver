# Example of vOptSpecific, for the 2LAP
# when the numerical instance is read on a file, according to the LAP format
# July 2017

using vOptSpecific   
m = load2LAP("2ap03.dat") # comment: set up the path to the file if required 
z1, z2, S = vSolve( m ) 
