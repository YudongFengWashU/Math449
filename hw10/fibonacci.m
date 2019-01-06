function X = fibonacci(f,a,b,tol,e)
    i=1;
    F=1; 
    while F<=(b-a)/tol 
        F=fib(i); 
        i=i+1; 
    end
    n=i-1; 
    A=zeros(1,n-2);
    B=zeros(1,n-2); 
    A(1)=a; 
    B(1)=b; 
    c=A(1)+(fib(n-2)/fib(n))*(B(1)-A(1)); 
    d=A(1)+(fib(n-1)/fib(n))*(B(1)-A(1)); 
    k=1; 
    while k <= n-3
        if feval(f,c)>feval(f,d) 
            A(k+1)=c; 
            B(k+1)=B(k); 
            c=d; 
            d=A(k+1)+(fib(n-k-1)/fib(n-k))*(B(k+1)-A(k+1)); 
        else
            A(k+1)=A(k); 
            B(k+1)=d; 
            d=c; 
            c=A(k+1)+(fib(n-k-2)/fib(n-k))*(B(k+1)-A(k+1));
        end
        k=k+1; 
    end
    if feval(f,c)>feval(f,d) 
        A(n-2)=c; 
        B(n-2)=B(n-3); 
        c=d; 
        d=A(n-2)+(0.5+e)*(B(n-2)-A(n-2));
    else
        A(n-2)=A(n-3); 
        B(n-2)=d; 
        d=c; 
        c=A(n-2)+(0.5-e)*(B(n-2)-A(n-2)); 
    end
    if feval(f,c)>feval(f,d)
        a=c;
        b=B(n-2);
    else
        a=A(n-2);
        b=d; 
    end
    X=[(a+b)/2 feval(f,(a+b)/2)];

    
    