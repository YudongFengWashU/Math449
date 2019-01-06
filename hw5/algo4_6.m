x = -2:0.1:2;
plot(x,tan(x))
hold on
plot(x, x + x.^3/3 + 2*x.^5/15 + 17*x.^7/315 + 62*x.^9/2835)
hold on
plot(x,(945*x - 105*(x.^3) + x.^5)./(945 - 420*(x.^2) + 15*(x.^4)))
err1 = 0
err2 = 0
for x = -1:0.01:1
    errT = abs(tan(x) - (x + x^3/3 + 2*x^5/15 + 17*x^7/315 + 62*x^9/2835))
    if errT > err1
        err1 = errT
    end
    errP = abs(tan(x) - ((945*x - 105*(x^3) + x^5)/(945 - 420*(x^2) + 15*(x^4))))
    if errP > err2
        err2 = errP
    end
end

