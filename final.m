%Funcion usada en Jacobi 
%---Funcion recursiva para obtener los factores de multiplicacion en cada
%despeje 
function fin = final(x,j,i,tamAp,A,auxj)
    t=j;
    t=t-1;
    valor1 = (x(t,i) * multiplica(auxj,A,t) );
    if(t>1)
        fin = valor1 + final(x,t,i,tamAp,A,auxj);
    else
        fin = valor1;
    end
end