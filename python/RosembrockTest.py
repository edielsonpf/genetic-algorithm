# -*- coding: utf-8 -*-
"""
Created on Wed Apr 12 09:27:24 2017

@author: edielson
"""

import sys
import os.path
sys.path.append(os.path.join(os.path.dirname(__file__), '..'))

from genetic_algorithm.ga import genetic_algorithm
from RosembrockExample import Rosembrock
import matplotlib.pyplot as plt


NumIndividuals = 20
MinX1 = -2
MaxX1 = 2
MinX2 = -1
MaxX2=3
IndividualSize = 8
MutationRate = 0.2

problem = Rosembrock(MinX1, MaxX1,MinX2,MaxX2, IndividualSize)

MaxGeneration = 2000
Target = 28
Elitism = True

ClassHandle  = genetic_algorithm(problem,MutationRate,Elitism)
fit,generation = ClassHandle.search(NumIndividuals, MaxGeneration, Target)

#interaction=[i for i in range(generation)]
#
#plt.plot(interaction,fit)
#plt.show()  
