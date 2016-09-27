from genetic_algorithm.ga import genetic_algorithm
from EightQueensExample import EightQueens
import matplotlib.pyplot as plt


NumIndividuals = 10
MaxSymbol = 8
IndividualSize = 8

problem = EightQueens(MaxSymbol, IndividualSize)

MaxGeneration = 1000
Target = 28

ClassHandle  = genetic_algorithm(problem)
fit,generation = ClassHandle.search(NumIndividuals, MaxGeneration, Target)

interaction=[i for i in range(generation)]

plt.plot(interaction,fit)
plt.show()  
