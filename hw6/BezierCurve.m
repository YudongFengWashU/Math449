 function [x,y]=BezierCurve(M,dt)
    [n dim] = size(M)  
    N = n-1               
    t = 0:dt:1
    x = 0
    y = 0
    for i = 0:N
        B = nchoosek(N,i)*(t.^i).*(1-t).^(N-i)
        x = x + M(i+1,1)*B  
        y = y + M(i+1,2)*B
    end
 end
