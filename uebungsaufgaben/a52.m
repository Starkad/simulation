clear all;
clc;
hold off;
close all;

guess=[1,1,1,1,0.5];

v=fminsearch(@fehlerquadsum,guess);


a0=v(1);
a1=v(2);
a2=v(3);
b=v(4);
t1=v(5);

m1= a0+a1*t1+a2*t1^2;
mgr=@(t) a0+a1*t+a2*t^2;
mkl=@(t) m1 +(b*(t-t1));

load ti_map.dat;

tvec=ti_map(:,1);
mmess=ti_map(:,2);
for i=1:1:length(tvec);
    t=tvec(i);
    if t<=t1
        mberechnet(i)=mgr(t);
    else
        mberechnet(i)=mkl(t);
    end
end

plot(tvec,mmess,'bo',tvec,mberechnet,'r-');

