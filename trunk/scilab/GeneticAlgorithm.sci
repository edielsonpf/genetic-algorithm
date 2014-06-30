function best_fit = GeneticAlgorithm(population, target)
    
    [num_individuals chromosomes population_size] = size(population);
    [best_fit, best_individual] = bestFitness(population);
    MAX_TIME = 2000;
    generation = 0;
    fit_historical=[];
    //while(best_fit~=target)&(generation < MAX_TIME)
    while(best_fit<target)&(generation < MAX_TIME)
        disp("Generation: "+string(generation));
        disp("Population:");
        disp(population);
        disp("Best fit: "+string(best_fit));
        //new_population = zeros(num_individuals, chromosomes, population_size);
        new_population=[];                    
//        for i = 1 : population_size
//          x=randomSelection(population); 
//           y=randomSelection(population);
//           new_individual = crossover(x,y);
//           if mutationTest()==1 then
//              new_individual=mutation(new_individual);
//           end
//           new_population = mycat(new_population,new_individual);
//        end
        i=1;
        if mutationTest()==1 then
            population(:,:,best_individual)=mutation(population(:,:,best_individual));
       end
        new_population = mycat(new_population,population(:,:,best_individual));
        i=i+1;
        while i < population_size
           x=randomSelection(population); 
           y=randomSelection(population);

           if crossoverTest()==1 then
               //[new_individual1,new_individual2] = crossover2(x,y);
               [new_individual1,new_individual2] = crossover3(x,y);
               if mutationTest()==1 then
                    new_individual1=mutation(new_individual1);
               end
               if mutationTest()==1 then
                    new_individual2=mutation(new_individual2);
               end    
           else
               new_individual1=x;
               new_individual2=y; 
           end
           new_population = mycat(new_population,new_individual1);
           new_population = mycat(new_population,new_individual2);
           i=i+2;
        end
        generation=generation+1;
        [best_fit, best_individual] = bestFitness(new_population);
        population = new_population;
        fit_historical(generation)=best_fit;
    end
    disp("Last generation: "+string(generation));
    disp("Final population:");
    disp(population);
    disp("Best fit individual:"+string(best_fit));
    disp(population(:,:,best_individual));
    plot(x=1:generation,fit_historical');
endfunction
