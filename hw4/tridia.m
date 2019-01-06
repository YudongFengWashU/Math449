function x = tridia(d, a, c, b)
%  d, a, c must be vectors of length n, so let d(1) and c(n) be 0.
n = length(b);
v = zeros(n,1);   
x = v;
w = d(1);
x(1) = b(1)/w;
for i=2:n
    v(i-1) = c(i-1)/w;
    w = d(i) - a(i)*v(i-1);
    x(i) = ( b(i) - a(i)*x(i-1) )/w;
end
for j=n-1:-1:1
   x(j) = x(j) - v(j)*x(j+1);
end