n = 4
p = [  2 , 4 , 3 , 1 ]
d = [  1 , 2 , 4 , 6 ]

using vOptSpecific

id = set2OSP( n , p , d )
z1, z2 , S = vSolve( id )