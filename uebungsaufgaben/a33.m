clear all;
clc;

a= 0.4; %m
M= 1; %kg
m= 2; %kg
v= 10;%m/s
s= 0.3;%m
epsi= 0.1;

Ma=M*a;
Ma2=M*(a^2);
Ms=M*s;
mv=m*v;

x=[-Ma/2, 0, -1, 1,0;
    -Ma,-Ma/2,0,-1,1;
    -Ma,-Ms,0,0,-1;
    -Ma2/12,0,a/2,a/2,0;
    0,-Ma2/12,0,a/2,(s-a/2);
    ];
b=[0,0,mv*(1+epsi),0,0]';

y=x\b