function [A,df] = diffnew(X_old,Y_old,M)
    N = length(X_old)
    Y = Y_old
    Y(1) = Y_old(M)
    for i = 2:M
        Y(i) = Y_old(i-1)
    end 
    A = Y   
    X = X_old
    X(1) = X_old(M)
    for i = 2:M
        X(i) = X_old(i-1)
    end
    for j = 2:N
        for k = N:-1:j
            A(k) = (A(k) - A(k-1))/(X(k) - X(k-j+1))
        end
    end
    x0 = X(1)
    df = A(2)
    prod = 1
    n1 = length(A) - 1
    for k = 2:n1
        prod = prod*(x0 - X(k))
        df = df + prod*A(k+1)
    end
    
    