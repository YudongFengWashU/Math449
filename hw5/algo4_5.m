
a=-1;% a is the left endpoint
b=1; % b is the right endpoint
n=6; %n is the degree of the Chebyshev interpolating polynomial
d=pi/(2*n+2);
C=zeros(1,n+1); %initialize C

for k=1:n+1
   X(k)=cos((2*k-1)*d);
end

X=(b-a)*X/2+(a+b)/2;
% X contains the abscissas
Y=sin(X);  
% Y contains the ordinates
for k =1:n+1
   z=(2*k-1)*d;
   for j=1:n+1
      C(j)=C(j)+Y(k)*cos((j-1)*z);
   end
end

C=2*C/(n+1);
C(1)=C(1)/2;

ab = -4:0.01:4
chebeval(C,ab)
plot(ab,sin(ab))
hold on
plot(ab,chebeval(C,ab))


