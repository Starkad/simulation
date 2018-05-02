function t = golfSpieler( v )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

p=v(1);
q=v(2);

a=300;%[m]
b=40;%[m]
v_l= 5; %[m/s]
v_s= 1.5; %[m/s]

p=min(p,a);
q=min(q,a);
p=max(p,0);
q=max(q,0);

s1=sqrt((3*b)^2 + (p^2));
s2=sqrt((b)^2 + ((q-p)^2));
s3=sqrt((2*b)^2 + ((a-q)^2));


t1=s1/v_l;
t3=s3/v_l;
t2=s2/v_s;

t=t1+t2+t3;

end

