import sys
import os.path
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

from genetic_algorithm.ga import genetic_algorithm
from EightQueensExample import EightQueens
import matplotlib.pyplot as plt


NumIndividuals = 20
MinSymbol = 1
MaxSymbol = 8
IndividualSize = 8
MutationRate = 0.2

problem = EightQueens(MinSymbol, MaxSymbol, IndividualSize)

MaxGeneration = 2000
Target = 28
Elitism = False

ClassHandle  = genetic_algorithm(problem,MutationRate,Elitism)
fit,generation = ClassHandle.search(NumIndividuals, MaxGeneration, Target)

interaction=[i for i in range(generation)]

plt.plot(interaction,fit)
plt.show()  
