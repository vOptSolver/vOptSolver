n  =  3

C1 = [  3   9   7       ;
       16   10   6     ;
        2   7  11        ]

C2 = [ 16   15   6     ;
       5   7  13     ;
        1   2  13          ]
       
using vOptGeneric
using GLPK ; using GLPKMathProgInterface

m = vModel( solver = GLPKSolverMIP() )
@variable( m , x[1:n,1:n] , Bin )
@addobjective( m , Min, sum( C1[i,j]*x[i,j] for i=1:n,j=1:n ) )
@addobjective( m , Min, sum( C2[i,j]*x[i,j] for i=1:n,j=1:n ) )
@constraint( m , cols[i=1:n], sum(x[i,j] for j=1:n) == 1 )
@constraint( m , rows[j=1:n], sum(x[i,j] for i=1:n) == 1 )

@time solve( m , method = :epsilon , step = 0.5 )

print_X_E(m)
getY_N(m)

