function R = rk4_2(fx,fy,a,b,Z,M)
    h = (b-a)/M;
    T = zeros(1,M+1);
    Y = zeros(1,M+1);
    T = a:h:b
    X(1) = Z(1)
    Y(1) = Z(2)
    for j = 1:M
        f1 = h*feval(fx,X(j),Y(j));
        g1 = h*feval(fy,X(j),Y(j));
        f2 = h*feval(fx,X(j)+f1/2,Y(j)+g1/2);
        g2 = h*feval(fy,X(j)+f1/2,Y(j)+g1/2);
        f3 = h*feval(fx,X(j)+f2/2,Y(j)+g2/2);
        g3 = h*feval(fy,X(j)+f2/2,Y(j)+g2/2);
        f4 = h*feval(fx,X(j)+f3,Y(j)+g3);
        g4 = h*feval(fy,X(j)+f3,Y(j)+g3);
        X(j+1) = X(j) + (f1 + 2*f2 + 2*f3 + f4)/6;
        Y(j+1) = Y(j) + (g1 + 2*g2 + 2*g3 + g4)/6;
    end
    R = [T' X' Y']
end
