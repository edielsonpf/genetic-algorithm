function test = crossoverTest ()
    a=[0 1];
    p=[0.2 0.8];
    // Get the cumulative sum of the probabilities.
    cumSumP = cumsum(p);
    //Get our random numbers - one for each column.
    randomNumber = rand(1);
    //Get the values from A.
    //If the random number is less than the cumulative probability then
    //that's the number to use from A.
    position = find(randomNumber < cumSumP, 1);
    test=a(position);
endfunction
