function fitnessPop = fitnessFunction(populacao)
    
    [lines rows popSize] = size(populacao);
    
    fitnessPop=[];
    
    //para cada individuo da população verifica-se o fitness
    for i=1:popSize;
        //começa no primeiro elemento de cada individuo
        fitness=0;
        for j=1:rows-1
            //.. e compara com cada um dos próximos elementos a partir da posição do individuo inicial
            for k=j+1:rows
                //disp("individuo collumn ["+string(j)+"]="+string(populacao(1,j,i))); uncomment for debug
                //disp("individuo collumn ["+string(k)+"]="+string(populacao(1,k,i))); uncomment for debug
                if(populacao(1,j,i)~=populacao(1,k,i))// rainhas não estão na mesma linha
                    if((populacao(1,j,i)+(k-j))~=populacao(1,k,i)) //rainha não encontra na mesma diagonal superior
                        if((populacao(1,j,i)-(k-j))~=populacao(1,k,i)) ////rainha não encontra na mesma diagonal inferior
                            fitness=fitness+1;  
                            //disp(fitness); uncomment for debug
                        end
                    end                     
                end    
            end
            
        end
        fitnessPop(i)=fitness;
    end
    disp("Fitness:")
    disp(fitnessPop);
endfunction
