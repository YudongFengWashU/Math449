ab = -1:0.01:1
plot(ab,sin(ab))
hold on
plot(ab,chebeval(cheby('sin(x)',4,-1,1),ab)/100-1)
