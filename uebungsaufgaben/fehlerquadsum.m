function fqsum = fehlerquadsum( v)
%FEHLERQUADSUM Summary of this function goes here
%   Detailed explanation goes here

a0=v(1);
a1=v(2);
a2=v(3);
b=v(4);
t1=v(5);
fqsum=0;

m1= a0+a1*t1+a2*t1^2;
mgr=@(t) a0+a1*t+a2*t^2;
mkl=@(t) m1 +(b*(t-t1));

load ti_map.dat;

tvec=ti_map(:,1);
mmess=ti_map(:,2);
for i=1:1:length(tvec);
    t=tvec(i);
    if t<=t1
        mgleichung=mgr(t);
    else
        mgleichung=mkl(t);
    end
    fehler=(mmess(i)-mgleichung)^2;
    fqsum = fqsum +fehler;    

end

