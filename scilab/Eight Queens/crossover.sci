function new_individual=crossover(x,y)
    n=length(x);
    c = grand(1, 1, "uin", 1, n);    
    //concatenate the two fathers in the C element choosen randomnly
    new_individual=[x(1:c) y(c+1:n)];
    disp("crossing point");
    disp(c);
    disp("New idividual generated");
    disp(new_individual);
endfunction
