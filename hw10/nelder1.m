function[V0,y0,dV,dy] = nelder1(F,V,min1,max1,epsilon,show)
    if nargin==5
        show=0;
    end
    [mm n]=size(V);
    for j=1:n+1
        Z=V(j,1:n);
        Y(j)=feval(F,Z);
    end
    [mm lo]=min(Y);
    [mm hi]=max(Y); 
    li=hi;
    ho=lo; 
    for j=1:n+1
        if(j?=lo&j?=hi&Y(j)<=Y(li))
            li=j; 
        end
        if(j?=hi&j?=lo&Y(j)>=Y(ho)) 
            ho=j;
        end
    end
    cnt=0;
    while(Y(hi)>Y(lo)+epsilon&cnt<max1)|cnt<min1
        S=zeros(1,1:n);
        for j=1:n+1 
            S=S+V(j,1:n);
        end
        M=(S-V(hi,1:n))/n;
        R=2*M-V(hi,1:n);
        yR=feval(F,R);
        if(yR<Y(ho))
            if(Y(li)<yR)
                V(hi,1:n)=R;
                Y(hi)=yR; 
            else
                E=2*R-M;
                yE=feval(F,E);
                if(yE<Y(li))
                    V(hi,1:n)=E;
                    Y(hi)=yE; 
                else
                    V(hi,1:n)=R;Y(hi)=yR;
                end
            end
        else if(yR<Y(hi))
                V(hi,1:n)=R;
                Y(hi)=yR;
            end
            C=(V(hi,1:n)+M)/2; 
            yC=feval(F,C); 
            C2=(M+R)/2; 
            yC2=feval(F,C2);
            if(yC2<yC)
                C=C2; 
                yC=yC2;
            end if(yC<Y(hi))
                V(hi,1:n)=C;
                Y(hi)=yC; 
            else
                for j=1:n+1
                    if(j?=lo) 
                        V(j,1:n)=(V(j,1:n)+V(lo,1:n))/2; 
                        Z=V(j,1:n); 
                        Y(j)=feval(F,Z); 
                    end
                end
            end
        end
        [mm lo]=min(Y);
        [mm hi]=max(Y);
        li=hi; 
        ho=lo;
        for j=1:n+1
            if(j?=lo&j?=hi&Y(j)<=Y(li))
                li=j; 
            end
            if(j?=hi&j?=lo&Y(j)>=Y(ho)) 
                ho=j;
            end
        end
        cnt=cnt+1;
        P(cnt,:)=V(lo,:);
        Q(cnt)=Y(lo);
    end
    snorm=0;
    for j=1:n+1 
        s=norm(V(j)-V(lo));
        if(s>=snorm) 
            snorm=s;
        end
    end
    Q=Q';
    V0=V(lo,1:n);
    y0=Y(lo); 
    dV=snorm;
    dy=abs(Y(hi)-Y(lo));
    if (show==1) 
        disp(P);
        disp(Q);
    end
end



