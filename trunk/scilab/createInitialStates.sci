// Função que cria um estado inicial aleatório do problema de 8 rainhas
//Autor: edielson@inatel.br
function populacao = createInitialStates()
 
        populacao = [];
        //posição máxima onde uma rainha pode ser colocada no tabuleiro
        //MaxSymbol = 8;
        MaxSymbol = 6;
        //MaxSymbol = 4;
        //Lines length
        //VectorSize=8;
        VectorSize=6;
        //VectorSize=4;
        //tmanaho da população inicial
        POPINICIAL=5;        
 
    //Cria todos os indiviudos e insere na populacao inicial
    for i = 1 : POPINICIAL
        individuo = grand(1, VectorSize, "uin", 1, MaxSymbol);
        //individuo = [2 4 6 grand(1, VectorSize-3, "uin", 1, MaxSymbol)];
        populacao = mycat(populacao,individuo);
    end
 
    disp("Incial population");
    disp(populacao);
endfunction
