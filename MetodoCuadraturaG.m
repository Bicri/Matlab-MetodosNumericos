function ifx = MetodoCuadraturaG(fx,a,b,n)

    fx=str2sym(fx);

    switch n
        case 2
            w=[1,1];
            z=[(-1/sqrt(3)),(1/sqrt(3))];
        case 3
            w=[0.5555555555, 0.8888888888, 0.5555555555];
            z=[(-sqrt(3/5)),0,(sqrt(3/5))];
        otherwise    
    end


    sumat=0;
    aux=zeros(1,n);
    fxx=zeros(1,n);
    for i=1:n
        aux(i)=(((b-a)*z(i))+b+a)/2;
        fxx(i)=double(subs(fx,'x',aux(i)));
        sumat=sumat+(w(i)*fxx(i));   
    end
        ifx=((b-a)/2)*(sumat);
end