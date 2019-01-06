function Z = F(X)
    x = X(1)
    y = X(2)
    z = X(3)
    Z = zeros(1,3)
    Z(1) = x^2 - x + 2*y^2 + y*z - 10
    Z(2) = 5*x - 6*y + z
    Z(3) = z - x^2 - y^2
    