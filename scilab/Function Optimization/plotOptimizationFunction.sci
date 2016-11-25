function plotOptimizationFunction()

//Gerando o grafico da funcao a ser otimizada
deff("[x1,x2,y]=rast(x1,x2)",["x1=x1";..
     "x2=x2";..
     "y = x1^2+x2^2-cos(12*x1)-cos(18*x2)"]);

[x1x1,x2x2,yy]=eval3dp(rast,linspace(-1,1,100),linspace(-1,1,100));
clf();plot3d(x1x1,x2x2,yy)

endfunction
