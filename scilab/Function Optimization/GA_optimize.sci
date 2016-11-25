function GA_optimize()
    
    //Definindo a funcao a ser otimizada
    //======================================================================
    func = 'rastrigin';
    deff('y=f(x)','y = '+func+'(x)');
    PopSize = 100;
    Proba_cross = 0.7;
    Proba_mut = 0.1;
    NbGen = 10;
    NbCouples = 110;
    Log = %T;
    nb_disp = 10;
    pressure = 0.05;
    
    //======================================================================
    
    // Configrando os parametros do algoritmo genetico
    //======================================================================
    ga_params = init_param ( );
    // Parameters to adapt to the shape of the optimization problem
    ga_params = add_param( ga_params , 'minbound' , eval ( 'min_bd_'+func+'()' ) ) ;
    ga_params = add_param( ga_params , 'maxbound' , eval ( 'max_bd_'+func+'()' ) ) ;
    ga_params = add_param( ga_params , 'dimension' , 2 ) ;
    ga_params = add_param( ga_params , 'beta' , 0 ) ;
    ga_params = add_param( ga_params , 'delta' , 0.1 ) ;
    
    // Parameters to fine tune the Genetic algorithm.
    ga_params = add_param( ga_params , 'init_func' , init_ga_default ) ;
    ga_params = add_param( ga_params , 'crossover_func' , crossover_ga_default) ;
    ga_params = add_param( ga_params , 'mutation_func' , mutation_ga_default) ;
    ga_params = add_param( ga_params , 'codage_func' , coding_ga_identity ) ;
    ga_params = add_param( ga_params , 'selection_func' , selection_ga_elitist ) ;
    ga_params = add_param( ga_params , 'nb_couples' ,NbCouples ) ;
    ga_params = add_param( ga_params , 'pressure' , pressure ) ;
    
    //The optim_ga function search a population solution of a single-objective problem with bound constraints.
    [ pop_opt , fobj_pop_opt , pop_init , fobj_pop_init ] = optim_ga ( f , PopSize , NbGen, Proba_mut , Proba_cross , Log , ga_params ) ;
    
    printf ( 'Genetic Algorithm: %d points from pop_opt \n ' , nb_disp ) ;
    for i =1:nb_disp
        printf ( 'Individual %d: x(1) = %f x(2) = %f -> f = %f \n ' , i , pop_opt( i )( 1 ) , pop_opt( i )( 2 ) , fobj_pop_opt( i ) ) ;
    end


endfunction
