function [best_fit, best_individual]=bestFitness(populacao)
     pop_fit = fitnessFunction(populacao);
     best_fit=pop_fit(1);
     best_individual=1;
     for i=2:length(pop_fit)
         if(pop_fit(i)>best_fit)
            best_fit = pop_fit(i);    
            best_individual=i;
         end
     end
     disp("Best fit: "+string(best_fit));
endfunction
