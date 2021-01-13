%Funcion usada en Jacobi y Gauss Seidel
%---Funcion recursiva para obtener los factores de multiplicacion en cada
%despeje 
function ini = inicial(x,j,i,tamAp,A,auxj)
    t=j;
    t=t+1;
    valor1 = (x(t,i) * multiplica(auxj,A,t) );
    if(t<tamAp(1))
        ini = valor1 + inicial(x,t,i,tamAp,A,auxj);
    else
        ini = valor1;
    end
end