function [P] = newdim(F,JF,P,delta,epsilon,max1)
    Y = feval(F,P);
    for k = 1:max1
        J = feval(JF,P);
        Q = P - (J\(Y)')';
        Z = feval(F,Q);
        err = norm(Q-P);
        relarr = err/(norm(Q)+epsilon);
        P = Q;
        Y = Z;
        iter = k;
        if (err<delta)|(relarr<delta)|(abs(Y)<epsilon)
            break
        end
    end
end
