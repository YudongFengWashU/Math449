function [p0,err,k,y]=cuberoot7(ff,dff,p0,delta,epsilon,max1)
  for (k=1:max1)
      p1 = p0-feval(ff,p0)/feval(dff,p0);
      err=abs(p1-p0)
      relerr=2*err/(abs(p1)+delta)
      p0=p1
      y=feval(ff,p0)
      if ((err<delta)|(relerr<delta)|(abs(y)<epsilon))
          break;
      end
  end
end
