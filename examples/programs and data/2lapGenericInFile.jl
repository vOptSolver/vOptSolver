       
using vOptGeneric
using GLPK ; using GLPKMathProgInterface

m = parseMOP( "2ap03.mop" , solver=GLPKSolverMIP() )

@time solve( m , method = :epsilon , step = 0.5 )

print_X_E(m)
getY_N(m)