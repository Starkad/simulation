clc;

%clear all;

global M_0 T m_s m_z Ozz Oxx h e g;

M_0=10000;%Nm
T=8;%s
m_s=4000;%kg
m_z=300;
h=1.5;%m
e=3.0;
r=e;
d=1.0;%Scheibentiefe t
g=9.81;%m/s²
a0=0;
y0=0;
a0p=0.03;%1/s
y0p=0.6;

Ozz=Ozzfun(m_s,r);
Oxx=Oxxyy(d,m_s,r);

tMax=50;%s

[t,xout] = ode45(@frisbee,[0 tMax],[a0,y0,a0p,y0p]);