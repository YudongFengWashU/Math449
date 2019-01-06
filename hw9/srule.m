function Z = srule(f,a0,b0,tol0)
% Simpson's Rule
% Input - f is the integrand input as a string 'f'
%       - a0 and b0 are upper and lower limits of integrantion
%       = tol0 is the tolerance
% Output- Z is a 1x6 vector[a0 b0 S S2 err tol1]

    h = (b0-a0)/2;
    S = h*(f(a0)+4*f((a0+b0)/2)+f(b0))/3;
    S2= S;
    tol1 = tol0;
    err = tol0;
    Z = [a0 b0 S S2 err tol1];
end

