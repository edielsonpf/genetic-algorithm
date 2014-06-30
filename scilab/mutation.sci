function mutation_indivudual = mutation(individual)
    
    //number of simblos
    //Symbols = 8;
    Symbols = 6;
    //Symbols = 4;
    //get a random position in the individual
    randomPosition = grand(1, 1, "uin", 1, Symbols);
    //get a random value for changing in the individual position selected before
    randomValue = grand(1, 1, "uin", 1, Symbols);
    individual(1,randomPosition)=randomValue;
    mutation_indivudual = individual;
endfunction
