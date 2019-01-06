function L=linsht(F1,F2,a,b,alpha,beta,M)
    Za = [alpha,0]; 
    [~,Z] = rks4(F1,a,b,Za,M);
    U = Z(:,1);
    
    Za = [0,1];
    [T,Z] = rks4(F2,a,b,Za,M);
    V = Z(:,1);
    
    X = U + (beta - U(M+1))*V/V(M+1);
    L = [T' X];
end
