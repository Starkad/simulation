%Zeitfunktion
clear all;
clc;
close all;
hold off;

p=150;%[m]
q=160;%[m]
a=300;%[m]
b=40;%[m]

v=[p,q];
opt=fminsearch(@golfSpieler,v);

t_opt=golfSpieler(opt);

pspace=1:1:a;
qspace=1:1:a;
F=zeros(length(pspace),length(qspace));
for i=1:stepsize(pspace):length(pspace)
    for j=1:stepsize(qspace):length(qspace)
        F(i,j)=golfSpieler([i,j]);
    end
end

tp=surf(pspace,qspace,F,'facealpha',0.4);
tp.EdgeColor='none';    

fig2=figure;
pl2=plot([0,a],[3.5*b , 3.5*b],'b-','linewidth',b);
hold on;
plot([0,opt(1)],[0 , 3*b],'r-','linewidth',1);
plot([opt(1),opt(2)],[3*b , 4*b],'r-','linewidth',1);
plot([opt(2),a],[4*b , 6*b],'r-','linewidth',1);
hold off;