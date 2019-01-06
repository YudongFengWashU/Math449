X = zeros(1,50);
Y = zeros(1,50);
for k = 1:50
    X(k) = 0.1*k
    Y(k) = X(k) + cos(k^0.5)
end
xmean = mean(X);
ymean = mean(Y);
sumx2 = (X-xmean)*(X-xmean)'
sumxy = (Y-ymean)*(X-xmean)'
A = sumxy/sumx2;
B = ymean - A*xmean;
fx = A*X + B;
E2 = (sum((fx - Y).^2)/50)^0.5;
plot(X,Y);
hold on;
xx = 0.1:0.1:5
plot(xx, A*xx+B)
