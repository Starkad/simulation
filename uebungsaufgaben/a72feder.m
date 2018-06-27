% DC_Motor_INI
clc;
clear all, close all,
x_0=0.3;
v_0=0;
k=10;
r=0.3;
m=1;
g=19.81;

tend=10;

sim ('FederMasse')
subplot(4,1,1), plot(m.time,m.data)
ylabel('m')
subplot(4,1,2), plot(x.time,x.data)
ylabel('x')
subplot(4,1,3), plot(v.time,v.data)
ylabel('v')
subplot(4,1,4), plot(a.time,a.data)
ylabel('a')