# Example of vOptSpecific, for the 2LAP
# July 2017

n  =  3

C1 = [  3    9   7     ;
       16   10   6     ;
        2    7  11       ]

C2 = [ 16   15   6     ;
        5    7  13     ;
        1    2  13       ]

using vOptSpecific   
       
m = set2LAP( n , C1 , C2 )

z1, z2, S = vSolve( m ) 
