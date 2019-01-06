function [c,err,yc]=approot(f,a,b,delta)
  ya=feval(f,a)
  yb=feval(f,b)
  max1=1+round((log(b-a)-log(delta))/log(2))
  for (k=1:max1)
      c=(a+b)/2
      yc=feval(f,c)
      if (yc==0)
          a=c;
          b=c;
      elseif (yb*yc>0)
          b=c;
          yb=yc;
      else 
          a=c;
          ya=yc;
      end
      if (b-a<delta)
          break;
      end
  end
  c=(a+b)/2
  err=abs(b-a);
  yc=feval(f,c);
end
      
  