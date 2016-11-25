function selected=randomSelection(populacao)
    best_fit = fitnessFunction(populacao);
    prob_fit = best_fit./sum(best_fit);
    
     // Get the cumulative sum of the probabilities.
    cumSumP = cumsum(prob_fit);
    //Get our random numbers - one for each column.
    randomNumber = rand(1);
    //Get the values from A.
    //If the random number is less than the cumulative probability then
    //that's the number to use from A.
    y = find(randomNumber < cumSumP, 1);
    selected = populacao(:,:,y);
    //Display it.
    disp("Individual selected")
    disp(y);
    disp(selected);
endfunction
