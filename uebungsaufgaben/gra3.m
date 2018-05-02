%1.11
    hold off;
   clear all;
   clc;
   syms x;
   
   y=sin(x);
  
   fplot(y,'color',[0,1,0]);
   axis([0,4*pi,-3,3]);
   hold on;
   f=sin(x);
   
   for i=1:1:15
       
       pause(1.0);
       t(i)=taylor(f,x,'Order',i,'ExpansionPoint', 0);
       fplot(t(i),'color',[1,0,0]);
       
   end
   
   
   
    hold off;