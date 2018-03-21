%function y=grado(x)
%y=(x/(2+pi))*360;
%end
%1.1
a=5;
b=10 / 2;
c=10 \ 2;
d=10 / 2 * 5 ;
e=10 / (2 * 5) ;
f=(1 + 2 + 3)* 4 / 5 ;
g=4^(-2) ;
g2=10^4000 ;
h=10^(-200) ;
i=10^(-300) ;
j=1 /0 ;
j2=round(1.5);
k=round(2.5);
l=fix(1.5);
m=round(-1.5) ;
%1.2
x=4/3;
x2=1.2345e-6;
format long ,(x)
format long ,(x2)
format short ,(x)
format short ,(x2)
format hex,(x)
format hex ,(x2)
%1.3
a3=x;
b3=a-1;
c3=b3+b3+b3;
e3=1-c3;
format long, a3,b3,c3,e3
%1.4
format rat, pi
rat(pi)
pi
exp(1)
format short,pi,e,exp(1)
clear all; %zum cleanen, sonst durchanand
e=(exp(1))
%2, 5
a5=sqrt(3);
b5=log(10^(-80));
c5=log(10^(-800));
d5=log10(10^(-80));
e5=exp(e^1);
f5=exp(e^0);
g5=exp(e^(-1));
h5=log(e^1);
i5=log10(1000*pi);
j5=sin(pi/2);
k5=sin(90^0);
l5=sin(1e10);
m5=sin(1e20);
n5=tan(pi/4);
o5=tan(pi/2);
p5=atan(0);
q5=atan2(1,1);
r5=atan2(1,-1);
s5=atan2(-1,-1);
t5=atan2(-1,1);
% 2.6

p6=rad2deg(p5);
q6=rad2deg(q5);
r6=rad2deg(r5);
s6=rad2deg(s5);
t6=rad2deg(t5);
clc%clear screen
%3.7
a7=1-0.2-0.2-0.2-0.2-0.2;
b7=sin(pi) ;
c7=0.3/0.1;
d7=3/1;
e7=1/3;
f7=0.1/0.3;
g7=3/4;
h7=0.3/0.4;
i7=1-1/3-1/3-1/3 ;

format long , a7,b7,c7,d7,e7,f7,g7,h7,i7,e,pi

%3.8
clc%clear screen
clear all; %zum cleanen, sonst durchanand
a8=1/0;
b8=1/Inf;
c8=Inf+Inf;
d8=Inf-Inf;
e8=0/0;
f8=sin(0)/0;
g8=sin(pi)/0;

%fprintf ('realmax %f4.2 realmin %f eps%f Inf%f NaN %f',realmax,realmin, eps,Inf,NaN) 

%4.9
u9=3+4i;
v9=-i+1;
u9abs=abs(u9);
v9abs=abs(v9);
u9angle=angle(u9);
v9angle=angle(v9);
u9conj=conj(u9);
v9conj=conj(v9);
u9real=real(u9);
v9real=real(v9);
u9imag=imag(u9);
v9imag=imag(v9);

%4.10
z10=3*exp(1i*pi);
z102=3+4i;
w102=-i;

%compass(z10)  %geht, nervt nur
abs(z102)*exp(1i*angle(z102))
abs(w102)*exp(1i*angle(w102))

fprintf ('%f * e ^ ( i %f pi )\n' ,abs(z102),angle(z102));
fprintf ('%f * e ^ ( i %f pi )\n' ,abs(w102),angle(w102));

%5.11
a11=sqrt(-1);
b11=sqrt(complex(3,4)); %u aus 4.9

%5.12
clear all;
clc;
u=complex(3,4);
n=[3,4];

c=[1,0,0,-u];
w=roots(c)
compass(w);
