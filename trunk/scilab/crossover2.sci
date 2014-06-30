function [new_individual1,new_individual2]=crossover2(x,y)
    n=length(x);
    c = grand(1, 1, "uin", 1, n);    
    //concatenate the two fathers in the C element choosen randomnly
    new_individual1=[x(1:c) y(c+1:n)];
    new_individual2=[y(1:c) x(c+1:n)];
    disp("crossing point");
    disp(c);
    disp("New idividuals generated");
    disp(new_individual1);
    disp(new_individual2);
endfunction
