clear all;
% close all;
clc;


load diesel.dat
% 'T [°C]','p [Pa]','rho [kg/mm^3]','nue [mm^2/s]','E [MPa]','a [m/s]'};

t=diesel(:,1); %[C]
p=diesel(:,2); %[Pa]
p=p/(10^6);
nue=diesel(:,4); %[mm^2/s]

%KoeffintenMatrix
A=ones(length(t),1);
A(:,2)=t;
A(:,3)=p;
A(:,4)=t.*p;
A(:,5)=t.^2;
A(:,6)=p.^2;
A(:,7)=-nue;
A(:,8)=-(nue.*t);
A(:,9)=-(nue.*p);

c=A\nue;%Koffeffizenten

v=visk(0,500,c);

%plot mess
% x=min(t):20:max(t);
% y=min(p):1000000:max(p);%1*10^6 Schritte;

x=min(t):stepsize(t):max(t);
y=min(p):stepsize(p):max(p);%1*10^6 Schritte;
Z=zeros(length(y),length(x));


%Messdatenmatrix

for i=1:1:length(t)
    %fetch values
    tsearch=t(i);
    psearch=p(i);
    nvalue=nue(i);
    %find index to Insert
    xindex=find(x==tsearch);
    yindex=find(y==psearch);
    
    if (xindex>0 && yindex>0)
        Z(yindex,xindex)=nvalue;
    end

end;
%plot
subplot(3,1,1);
s=surf(x,y,Z);
s.EdgeColor = 'none';

W=zeros(length(y),length(x));
%plot(ownvalues)
for i=1:1:length(x)
    for j=1:1:length(y)
    W(j,i)=visk(x(i),y(i),c);
    end
end

subplot(3,1,2);
tp=surf(x,y,W);
tp.EdgeColor = 'none';

DIFF=zeros(length(y),length(x));  
for i=1:1:length(x)
    for j=1:1:length(y)
        DIFF(j,i)=Z(j,i)-W(j,i);
    end
end  
subplot(3,1,3);
diffplot=surf(x,y,DIFF);
diffplot.EdgeColor = 'none';
        
        
        
        
        
        
        
        
        
        
        
        
        
