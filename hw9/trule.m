function Z = trule(f,a0,b0,tol0) 
    h = (b0-a0)/2;
    S = h*(feval(f,a0)+feval(f,b0));
    S2 = S;
    tol1 = tol0;
    err = tol0;
    Z = [a0 b0 S S2 err tol1];
end
