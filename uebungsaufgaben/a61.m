clc;

%clear all;


global a_1 s_1 s_2 m_1 m_2 Os1 Os2 g;

%Randbedingugen
a_1=3.0;%m
s_1=1.5;%m
a_2=1.8;%m 
s_2=0.9;%m
m_1=10.0;%kg;
m_2=80.0;%kg

Os1=7.5;%kgm²
Os2=20.0;%kgm²
g=9.81;%m/s²


%Anfangsbedingungen
a_0=10;%°
b_0=11.03;

a_0p=0;%Winkelgeschw.
b_0p=0;


[t,xout] = ode45(@clown,[0 20],[a_0,b_0,a_0p,b_0p ]);

subplot(3,1,1);
plot(t,xout(:,1));
subplot(3,1,2);
plot(t,xout(:,2));


aend=xout(length(xout),1);
bend=xout(length(xout),2);

hypo=a_1;
lepos=[sind(aend)*hypo,cosd(aend)*hypo];

clpos=[sind(bend)*s_2,cosd(bend)*s_2];

cllepos=lepos+clpos;
subplot(3,1,3);
plot([0,lepos(2)],[0,lepos(1)],[lepos(2),cllepos(2)],[lepos(1),cllepos(1)]);
