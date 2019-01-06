f=inline('1/sqrt(x)','x');
[SRmat,quad,err]=adapt(f,0.04,1,0.0001);
quad