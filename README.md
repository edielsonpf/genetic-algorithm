# genetic-algorithm
Genetic algorithm implementation for teaching support

## Quick start

```Python

import sys
import os.path
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from genetic_algorithm.ga import genetic_algorithm
from EightQueensExample import EightQueens
import matplotlib.pyplot as plt


#Genotype definition
NumIndividuals = 20
MinSymbol = 1
MaxSymbol = 8
IndividualSize = 8

#Instantiate problem object with the genotype parameters
problem = EightQueens(MinSymbol, MaxSymbol, IndividualSize)

#Algorithms parameters definition 
MaxGeneration = 2000
Target = 28
Elitism = True
MutationRate = 0.2

#Instantiate the GA algorithm
ClassHandle  = genetic_algorithm(problem,MutationRate,Elitism)

#Solve the problem
fit,generation = ClassHandle.search(NumIndividuals, MaxGeneration, Target)

#Plot the algorithm solution sequence
interaction=[i for i in range(generation)]
plt.plot(interaction,fit)
plt.show()

```
