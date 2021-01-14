

function ecuacion = MetodoLagrange(x,f)

    n=length(x);
    syms t
    p=0;  
    
    for i=1:n
        L=1;
        for j=1:n
            if i~=j
                L=L*(t-x(j))/(x(i)-x(j));
            end
        end
        p=p+L*f(i);
    end
    
    ecuacion=expand(p);
end