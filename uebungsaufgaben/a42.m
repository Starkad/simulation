%4.2 Bevölkerungsentwicklung
clear all; clc;
A=[1 , 1950 ;   %A=1,x1
   1 , 1960 ;
   1 , 1970 ;
   1 , 1980 ;
   1 , 1990 ;
   1 , 2000 ;
   1 , 2010];

b=[151 ; 179 ; 203 ; 226 ; 250 ; 282 ; 310];    %B= Bevölkerung

Aq=[A(:,1),A(:,2),A(:,2).^2]; %Aq = Aquadrat = 1, x1, x1^2
%Alternativ A,A(:2).^2 (für zusammenfassung)

%Koeffizientenmatrix
c = A \ b;
cq= Aq \ b;

xhelp=2020;

y2020 = c(1) + c(2)*xhelp;
yq2020 = cq(1) + cq(2)*xhelp + cq(3)*(xhelp^2);

x=1950:10:2020; %x von 1950 in 10er schritten bis 2020

f=c(1) + c(2)*x;
fq=cq(1) + cq(2)*x + cq(3)*(x.^2);
hold off;
hold on;
b0=b;
b0(7)=0;
plot(x,f,x,fq);
plot(x(1:6),b);
