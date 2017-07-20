# Example of vOptGeneric, for a 2IP (the 2ap03.mop is a 2LAP)
# the numerical instance is read on a file, according to the MOP format
# July 2017

using vOptGeneric
using GLPK ; using GLPKMathProgInterface

m = parseMOP( "2ap03.mop" , solver=GLPKSolverMIP() ) # comment: set up the path to the file if required 
@time solve( m , method = :epsilon , step = 0.5 )

print_X_E(m)
getY_N(m)
