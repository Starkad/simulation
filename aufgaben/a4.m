%4.1
clear all;
clc;
%Messwerte 
b=[ 30.006 ; 44.013 ; 46.006 ;  76.012 ;  108.010;   92.011]; %[mol]
A=[1,1;
    2,1;
    1,2;
    2,3;
    2,5;
   2,4];%[N,O;..]

x=A \ b;

%korrigierte Messwerte
bcor = A(:,1) .* x(1) + A(:,2).*x(2);
hold on;

%besser surf zum Ploten

%h0old off;
%surf(A,b);
%hold off;
%surf(A,bcor);

%Messabweichungen
mdist=(b-bcor);
hold off;
subplot(2,1,1);
plot(b,'--x');
hold on;
plot (bcor,':o');
ylabel('Molgewicht [mol]'); 
legend('Messwerte','korrigiert');
subplot (2,1,2);
plot(mdist);
legend('Fehlerabweichung')

xlabel('Messpunkte'); 
ylabel('Abweichung [mol]'); 


