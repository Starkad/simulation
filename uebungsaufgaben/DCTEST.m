% DC_Motor_INI
clear all, close all
c_M = 1.0; % Maschinenkonstante
Phi = 1.5; % Vs Magnetischer Fluss vom Dauermagneten
u_A = 20; % V Klemmenspannung
ML = 5; % Nm Lastmoment
L_A = 0.15; % H Ankerinduktivität
R_A = 2.0; % Ohm Ankerwiderstand
J_A = 2.0; % kgm^2 Trägheitsmoment von Anker und Last
om_ini = 0; %13; % Anfangs-Kreisfrequenz
t_u_A_step = 2; % 15; % s
t_ML_step = 12; % 15; % s
sampletime = 0.05;
tend = 30; % 30; % zu simulierende Zeit SimulationStopTime (Im Menü muss
% dazu der Zahlenwert durch tend ersetzt werden.



sim ('DC_MOTOR')
subplot(3,1,1), plot(i_A.time,i_A.data)
ylabel('i\_Anker in A')
subplot(3,1,2), plot(om_A.time,om_A.data)
ylabel('Omega in rad/s')
subplot(3,1,3), plot(n_A.time,n_A.data)
ylabel('Drehzahl'), xlabel('t in s')