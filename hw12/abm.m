function A = abm(f,T,Y)
    n=length(T);
    if n<5
        return
    end
    F = zeros(1,4);
    F = feval(f,T(1:4),Y(4)); 
    h = T(2) - T(1); 
    for k=4:n-1
        p=Y(k)+(h/24)*(F*[-9 37 -59 55]');
        T(k+1) = T(1) + h*k;
        F = [F(2) F(3) F(4) feval(f,T(k+1),p)];
        Y(k+1) = Y(k) + (h/24)*(F*[1 -5 19 9]')
        F(4) = feval(f,T(k+1),Y(k+1));
    end
    A = [T' Y']
end
