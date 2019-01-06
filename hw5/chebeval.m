function y= chebeval (C,x)
N=length(C)-1;
if N==0 
  y=C(1);   % then this is the output regardless of x
else
  T0=1; T1=x;
  y=C(1)*T0+C(2)*T1;  % initialize the output
  for k=3:N +1  % this loop does not execute if N<2
    T = 2*x.*T1-T0;    % recursively compute T=Tn(x), where n=k-1
    y = y + C(k)*T;
    T0=T1; T1=T;    % update Tn-2 and Tn-1
  end
end
 % now y=L(x)=C(1)*T0(x)+C(2)*T1(x)+...+C(N+1)*TN(x)
end



