%Funcion usada en Gauss Seidel
%Funcion recursiva que calcula la ecuacion (Sin termino independiente y sin
%divisor) para la  variables que no estén al inicio de la ecuacion
function inter = intermedio(x,j,i,tamAp,auxj,A)
    t=j;
    t=t-1;
    if(t==1)
        aux = x(t,i);
    else
        aux = x(t,i+1);
    end
    valor = aux * multiplica(auxj,A,t);
    
    if(t>1)
        inter = valor + intermedio(x,t,i,tamAp,auxj,A);
    else
        inter = valor;
    end
end