# Solver of multiobjective linear optimization problems

**vOptSolver** is an ecosystem for modeling and solving multiobjective linear optimization problems (MOMIP, MOLP, MOIP, MOCO). It integrates several exact algorithms for computing the set of non-dominated points, and the corresponding complete set of efficient solutions, for structured and non-structured optimization problems with at least two objectives.

This repository (1) gives a description of the solver and (2) hosts documents covering all parts of the solver.


### Content

- [Overview](./README.md#overview)
- [Features](./README.md#features)
- [Instructions](./README.md#instructions)
- [Documentation](./README.md#documentation)
- [References](./README.md#references)

### News
    24-Jul-2021: vOptSpecific updated, and new examples added
    21-Jul-2021: Examples for vOptGeneric updated and new examples added
    15-Jun-2019: Testing the version of vOptGeneric compliant with JuMP 0.19  
    22-Apr-2019: Preparing an update of the documentation 
    31-Oct-2018: vOptSpecific and vOptGeneric are compliant with Julia v1.x 
    01-Jul-2018: Preparing the switch to Julia 0.7 and to the new version of JuMP 
    01-Sep-2017: Algorithms added to vOptGeneric and vOptSpecific, documentation and examples are coming.
    20-Jul-2017: Examples presented in conferences (MCDM'2017; IFORS'2017) are online (folder examples)
    26-Jun-2017: Source codes of vOptGeneric and vOptSpecific for v0.0.2 are online
    17-Jun-2017: Moved from GitLab to GitHub
    03-Jun-2017: The next release (v0.0.2) is scheduled for June 2017
    
### Feedback
All bugs, feature requests, pull requests, feedback, etc., are welcome. 

### Coordinator
Prof. Dr. Xavier Gandibleux, University of Nantes - France [(contact)](https://www.univ-nantes.fr/xavier-gandibleux)

### Developers
By alphabetical order:
- Current contributors: Xavier Gandibleux, Anthony Przybylski, Gauthier Soleilhac.
- Past contributors: Lucas Baussey, Pauline Chatelier, Quentin Delmée, Dorian Dumez, Flavien Lucas, Clément Turcat.

### How To Contribute
1. in adding your examples (code JuMP + data) solved with vOptGeneric to the collection;
2. in plugging your own C/C++/Julia algorithms into vOptSpecific or vOptGeneric;
3. in adapting vOptSpecific for windows;
4. in sending us your suggestions to improve/extend vOptSolver;
5. in telling us when you have completed a work (exercices for students; research; paper; etc.) using vOptSolver;
6. in joining the adventure with us as maintainer of the solver, repositories, documents, etc.

In brief, every contributions aiming to share our efforts, our algorithms, our productions around this open source software are welcome.

### License
vOptSolver is distributed under the MIT [License](./LICENSE.md).

### How To Cite
Xavier Gandibleux, Gauthier Soleilhac, Anthony Przybylski, Flavien Lucas, Stefan Ruzika, Pascal Halffmann. vOptSolver,   a   "get   and   run"   solver   of multiobjective  linear  optimization  problems  built  on Julia and JuMP. *MCDM2017: 24th International Conference on Multiple Criteria Decision Making*. July 10-14, 2017. Ottawa (Canada).

Xavier Gandibleux, Gauthier Soleilhac, Anthony Przybylski, Stefan Ruzika. 
vOptSolver: an open source software environment for multiobjective mathematical optimization.
*IFORS2017: 21st Conference of the International Federation of Operational Research Societies*. 
July 17-21, 2017. Quebec City (Canada).

### Support
The development of vOptSolver started in the ANR/DFG-14-CE35-0034-01 research project vOpt (2015-2019) [(link)](https://vopt-ANR-DFG.univ-nantes.fr/) involving Université de Nantes (France) and University of Koblenz-Landau/University of Kaiserslautern (Germany).

## Overview

### Aims
- Solver of multiobjective linear optimization problems for scientifics and practionners
- Easy to formulate a problem, to provide data, to solve a problem, to collect the outputs, to analyze the solutions
- Natural and intuitive use for mathematicians, informaticians, engineers

### Purposes
- Solving needs: methods and algorithms for performing numerical experiments
- Research needs: support and primitives for the development of new algorithms
- Pedagogic needs: environment for practicing of theories and algorithms

### Characteristics
- Efficient, flexible, evolutive solver
- Free, open source, multi-platform, reusing existing specifications
- Easy installation, no need of being expert in computer science

### Background
- Julia programming language [(link)](http://julialang.org/)
- JuMP algebraic language [(link)](https://github.com/jump-dev/JuMP.jl)
- Usual free (GLPK, Clp/Cbc) and commercial (CPLEX, GUROBI) MIP solvers

## Features

### Problems managed
- vOptGeneric: Multiobjective non-structured problems / algebraic language (JuMP),
    - p-LP: Linear Program
    - p-MIP: Mixed Integer linear Program
    - p-IP: Integer linear Program 
- vOptSpecific: Multiobjective structured problems / Application Programming Interface (API),
    - 2-LAP: Linear Assignment Problem 
    - 2-OSP: One machine Scheduling Problem
    - 2-UKP: binary Unidimensional knapsack problem 
    - 2-UMFLP: Uncapacitated Mixed variables Facility Location Problem 
    - Forthcoming: [p-PATHS, 2-UDFLP]. Projects : [MKP, SSCFLP, CFLP]

### Algorithms integrated
The solving algorithms included compute exact solution(s) corresponding to Y_{lex}, Y_{SN}, or Y_{N}.
- vOptGeneric: generic algorithms for structured or non-structured discrete problems,
    - Lexico: compute Y_{lex}, the lexicographic optimal solutions for p-IP (Julia+JuMP) 
    - Aneja1979: compute Y_{SN} with Aneja & Nair method (also named the dichotomic method) for 2-IP (Julia+JuMP)
    - Haimes1971: compute Y_{N} with epsilon-constraint method for 2-IP (Julia+JuMP)
    - Chalmet1986: compute Y_N with Chalmet et al. method for 2-IP (Julia+JuMP) 
    - Forthcoming: algorithms for [{2,3}-LP]. Projects: algorithms for [3-IP, \{2,3\}-MIP]
- vOptSpecific: specific algorithms for structured (MOCO) problem,
    - Przybylski2008: 2LAP2008 (C)
    - Wassenhove1980: 2OSP1980 (implemented in 2017 in Julia)
    - Jorge2010: 2UKP2010 (re-implemented in 2017 in Julia)
    - Delmee2017: 2UMFLP2016 (C++)
    - Forthcoming:[Gandibleux2006: PATHS (re-implemented in 2018 in Julia); Gandibleux2012: 2UDFLP2012 (re-implemented in 2018 in C)]

### Inputs
- Non-structured problems: 
    - direct with the provided languages (Julia, JuMP)
    - standard MOP format (IP, MIP, LP)
    - specific problem format (MIP)
- Structured problems: 
    -  direct with the language (Julia), 
    -  specific problem format (2LAP, 2UKP, 2UFLP)

### Outputs
- Non-structured problems: 
    - standard 2MOP format (IP, MIP, LP)
- Structured problems: 
    - specific problem format (2LAP, 2UKP, 2UFLP)

## Instructions 

### Information
- Julia is available on macOS, linux, and windows
- vOptSolver (composed of vOptGeneric and vOptSpecific) is free, open source under MIT licence.
- vOptGeneric has been tested with Julia 1.6 on macOS 11.4, linux-Ubuntu 18.04.5 LTS and Windows 10 64 bits.  
- vOptSpecific have been tested with Julia 1.6 on macOS 11.4 and linux-Ubuntu 18.04.5 LTS. 

### Installation and usage Instructions
Refer to the instructions provided for
- [vOptSpecific](https://github.com/vOptSolver/vOptSpecific.jl)
- [vOptGeneric](https://github.com/vOptSolver/vOptGeneric.jl)


## Documentation (working on it)
The available documentation is obsolete (written for Julia v0.6.4). New versions compliant with v1.x are for soon. 

Old documentation:
- Tutorial (in waiting a user manual) for new users [(folder docs)](https://github.com/vOptSolver/vOptSolver/tree/master/docs)
- Examples of problems ready to be performed [(folder examples)](https://github.com/vOptSolver/vOptSolver/tree/master/examples)
- Presentations given in conferences [(folder talks)](https://github.com/vOptSolver/vOptSolver/tree/master/talks)


## References

-   [Haimes1971] Y.V. Haimes, L.S. Lasdon, D.A. Wismer: 
    On a bicriterion formation of the problems of integrated system identification and system optimization.
    *IEEE Transactions on Systems, Man and Cybernetics*, Volume SMC-1, Issue 3, Pages 296-297, July 1971.
    
-   [Aneja1979] Y. P. Aneja and K. P. K. Nair: 
    Bicriteria Transportation Problem.
    *Management Science*, 25:1, 73-78 1979. 

-   [Wassenhove1980] L. N. Van Wassenhove, L. F. Gelders: 
    Solving a bicriterion scheduling problem.
    *European Journal of Operational Research*, Volume 4, Issue 1, Pages 42-48, 1980.

-   [Chalmet1986] L.G. Chalmet, L. Lemonidis, D.J. Elzinga: 
    An algorithm for the bi-criterion integer programming problem.
    *European Journal of Operational Research*, Volume 25, Issue 2, Pages 292-300, 1986.

-   [Gandibleux2006] X. Gandibleux, F. Beugnies, S. Randriamasy:  
    Martins' algorithm revisited for multi-objective shortest path problems with a MaxMin cost function. 
    *4OR: A Quarterly Journal of Operations Research*, Springer Verlag, 4 (1), pp.47-59, 2006.

-   [Przybylski2008] A. Przybylski, X. Gandibleux, M. Ehrgott: 
    Two phase algorithms for the bi-objective assignment problem.
    *European Journal of Operational Research*, Volume 185, Issue 2, Pages 509-533, 2008.

-   [Jorge2010] J. Jorge: 
    *Nouvelles propositions pour la résolution exacte du sac à dos multi-objectif unidimensionnel en variables binaires.* 
    PhD Thesis (in French), Université de Nantes - France, 2010.

-   [Gandibleux2012] X. Gandibleux, A. Przybylski , S. Bourougaa, A. Derrien, A. Grimault: 
    Computing the Efficient Frontier for the 0/1 Biobjective Uncapacitated Facility Location Problem 
    *CORS/MOPGP’2012 (10th international conference on Multiple Objective Programming and Goal Programming).* June 11-13, 2012, Niagara Falls, Canada.

-   [Vincent2013] Th. Vincent:
    *Caractérisation des solutions efficaces et algorithmes d'énumération exacts pour l'optimisation multiobjectif en variables mixtes binaires.* 
    PhD Thesis (in French), Université de Nantes - France, 2013.

-   [Delmee2017] Q. Delmée, X. Gandibleux, A. Przybylski: 
    Résolution exacte du problème de localisation de services bi-objectif sans contrainte de capacité en variables mixtes.
    *ROADEF2017 (18ème édition du congrès annuel de la Société Française de Recherche Opérationnelle et d'Aide à la Décision).* 22-24 février 2017, Metz, France.
    
-   [Dumez2017] D. Dumez, X. Gandibleux, I. Rusu. Datastructures for Filtering and Storing Non-Dominated Points.
    *MOPGP'2017: 12th International Conference on Multiple Objective Programming and Goal Programming.* 30-31 October 2017, Metz, France.



---

Terms and acronyms used
- LP: Linear Program
- MIP: Mixed Integer linear Program
- IP: Integer linear program
- CO: Combinatorial Optimization
- MOLP: MultiObjective linear program
- MOIP: MultiObjective Integer linear program
- MOMIP: MultiObjective Mixed Integer linear Program
- MOCO: MultiObjective Combinatorial Optimization
- OSP: One machine Scheduling Problem
- LAP: Linear Assignment Problem
- UKP: Unidimensional 01 Knapsack Problem
- MKP: Multidimensional 01 Knapsack Problem
- UFLP: Uncapacitated Facility Location Problem
- UDFLP: Discrete Uncapacitated  Facility Location Problem
- SSCFLP: Single Source Capacitated Facility Location Problem
- UMFLP: Uncapacitated Mixed variables Facility Location Problem
- CFLP: Capacitated Facility Location Problem
- PATHS: shortest paths problem
- Julia: name of the programming language
- JuMP: stands for Julia for Mathematical Optimization, a modeling language for mathematical optimization embedded in Julia
- AVL tree is a self-balancing binary search tree
- API: stands for Application Programming Interface
- GPL: stands for GNU General Public License
- GLPK: stands for GNU Linear Programming Kit, an open source solver
- Clp/Cbc : an open source solver (for LP and MILP respectively) from the COIN-OR project
- CPLEX: a commercial solver
- GUROBI: a commercial solver
- MOP: MultiObjective extension of MPS format




