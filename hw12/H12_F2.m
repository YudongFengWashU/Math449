function Z = H12_F2(t,Z)
    x = Z(1);
    y = Z(2);
    Z = [y,2*t*y/(1+t^2)-2*x/(1+t^2)];
end