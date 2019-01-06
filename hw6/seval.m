     function [Xout,Yout]=seval(S,X,steps)

     M=length(X)-1;
     Xout = X(1);	% initialize output abscissas
     Yout = S(1,4);	% initialize output ordinates
     for k=1:M
	 delX = (X(k+1)-X(k))/steps;  % increment per step, kth subinterval
	 newX = X(k):delX:X(k+1);	 % abscissas, kth subinterval
	 newY = polyval(S(k,:), newX-X(k)); % ordinates, kth subinterval
	 Xout = [Xout, newX];
	 Yout = [Yout, newY];
     end