clear all; 
clc;
y = [0, 0.8, 1.6, 3.6, 7.5, 3.1, 2, 1];
 x = [0, 1, 4, 6, 10, 12, 17, 20];
 plot(y);
 plot(x,y);
 
 %1.3
 clear all;
 
 x=linspace(0,4*pi,368);
 y=sin(x);
 plot(x,y);
 %Mögl2
 fplot('sin',[0 4*pi]) ;
 
 %1.4
 e=exp(1);
  x=linspace(-3,3,368);
  x2=x.^2;
 y1=e.^(-x2/2);
 y=1/(sqrt(2*pi))*y1;
 plot(x,y);
 %Mögl2
 fplot('(1/(sqrt(2*pi)))*(exp(1)^(-x^2/2))',[-3 3]) ;
 
 hold off;
 %1.5
 x=linspace(-2*pi,2*pi,368);
 y1=sin(x);
 y2=2*sin(2*x);
 y3=3*sin(3*x);
 plot(x,y2,x,y3);  %x,y1 aus Übersichtsgründen gelöscht
 
 %1.6
 hold on;
 y4=y2+y3;
 pl=plot(x,y4);
 close all;
 
 %1.7
  x=linspace(0,2*pi,368);
  y1=sin(2*pi*x);
  y2=sin(2.2*pi*x);
  y3=y1+y2;
  y4=y1.*y2;
  
  plot(x,y3,x,y4);
  legend('y3','y4');
  close all;
  
  %1.8
  ax1=subplot(2,2,1);
  plot(ax1,x,y1);
  title('y1');
  ax2=subplot(2,2,2);
  plot(ax2,x,y2);
  title('y2');
  
  ax3=subplot(2,2,3);
  plot(ax3,x,y3);
  title('y3');
  ax4=subplot(2,2,4);
  plot(ax4,x,y4);
  title('y4');
  close all;
  %1.9
  
   y9=[0.1, 0.25, 0.5, 2.1, 10.4, 25.7, 189.4, 2100.0, 5215];
   semilogy(y9); %logarithm y achse
   
   %1.10
   y10=exp(-0.3*x).*cos(2*x);
   y11=-y10;
   %https://de.mathworks.com/help/signal/ref/envelope.html
   [yupper,ylower] = envelope(y10);
   h=plot(x,y10,x,y11,x,yupper,x,ylower);
   set(h(1),'LineWidth',2.2,'color',[0,1,0]); 
   set(h(2),'color','b','LineStyle','- -'); 
   set(h(3:4),'color','r','LineStyle','-');
   
   
   
   
  

  
  
  
  
  