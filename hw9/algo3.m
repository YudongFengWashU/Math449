n = 10
fi = zeros(1,8)
for i = 1:8
    x = 0.5*i
    s = rctrap('et',0,x,n)
    ss = s(n+1)
    fi(i) = 0.5+(1/((2*pi)^0.5))*ss
end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 

    