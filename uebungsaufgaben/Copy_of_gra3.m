%1.12
    hold off;
   clear all;
   clc;
   syms x;
   
   y=exp(x);
  
   fplot(y,'color',[0,1,0]);
   axis([-3,3,-3,3]);
   hold on;
   f=sin(x);
   
   for i=1:1:15
       
       pause(1.0);
       t(i)=taylor(f,x,'Order',i,'ExpansionPoint', 0);
       fplot(t(i),'color',[1,0,0]);
       
   end
   
   
   
    hold off;