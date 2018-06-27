% DC_Motor_INI
clc;
clear all, close all
c_M = 1.0; % Maschinenkonstante
Phi = 1.5; % Vs Magnetischer Fluss vom Dauermagneten
u_A = 20; % V Klemmenspannung
M_L = 5; % Nm Lastmoment
L_A = 0.15; % H Ankerinduktivit�t
R_A = 2.0; % Ohm Ankerwiderstand
J_A = 2.0; % kgm^2 Tr�gheitsmoment von Anker und Last
om_ini = 0; %13; % Anfangs-Kreisfrequenz
t_n_soll_step = 0.5; % 15; % s
M_L1=0;
M_L2=6.01;
t_ML_step = 3; % 15; % s
sampletime = 0.05;
n_soll = 20.1;
tend = 30; % 30; % zu simulierende Zeit SimulationStopTime (Im Men� muss
% dazu der Zahlenwert durch tend ersetzt werden.

P=0;
I=60;
D=0;



sim ('a71really')
subplot(3,1,1), plot(i_A.time,i_A.data)
ylabel('i\_Anker in A')
subplot(3,1,2), plot(om_A.time,om_A.data)
ylabel('Omega in rad/s')
subplot(3,1,3), plot(n_A.time,n_A.data)
ylabel('Drehzahl'), xlabel('t in s')