echo off;
clear all;

%1.1
u=[2 -3 1 0];
v=[-1; 0; 1; 4];

w=u;
for i=1:length(v)
   w(length(u)+i)= v(i);
end

for i=1:length(w)/2
   x(i)= w(2*i);
end

%1.2
a=1:1:11;
b=20:-2:0;
c=appendvec(a',b');

d=c;
for i=length(d)/2-2:1:length(d)/2+2
    d(i)=0;
end

clear all;

%a1.3
x=linspace(1,20,101);
y=sprung(x,5);


%1.4
p=linspace(0,pi,31);

%2.5
clear all;
a=[1, 2, 3];
b=[-1, 2, 1];

c=dot(a,b);
d=norm(a);
e=norm(b);
f=sqrt((a(1)-b(1))^2 +(a(2)-b(1))^2 +(a(3)-b(3))^2); %abstand durch Wurzel(a1-b1)+...
g=acos(c /(d+e)); %winkel=skalar/betragA+betragB

%3.6
h=a+1;
i2=a+b;
j=a+b(1);
k=a.*b;
l=a.^b;
m=exp(a);
n=sin(a);


%3.7
o=sum([a b]);
p=sum([a;b]);

q=a+ i*b;
q=max(abs(complex(a,b)));
r=linspace(0,pi,200);
s=sin(r);
plot(r,s)
[val,index]=max(s);
zero=find(s==0);%numerisch findet nicht alle
big=find(s>0.5);

%3.8
clear all;
u=[2,-3,1,0];
v=-[1,0,1,4];

a=u&v;
b1=find(u);
b2=find(v);
b=b1|b2;
c=find(u==0 & u<=1);
clear all;
%4.9
A=[1 2 3];
A(2,:)=A(1,:)+3;
A(3,:)=A(2,:)+3;
E=eye(3);
D=ones(3);
B=diag([2,4,6]);

%4.10
F=ones([1,6]);
clc;

%4.11

A=reshape([1:9],3,3);
d=size(A);
A(3,3)=10;
v=A(2,:);
u=diag(A);
A=diag(u);


%4.12
F=zeros(6,3);
for i=1:3
    for j=1:3
        F(i,j)=A(i,j);
    end
end
for i=1:3
    for j=1:3
        F(i+3,j)=A(i,j);
    end
end
G=zeros(3,6);
for i=1:3
    for j=1:3
        G(i,j)=A(i,j);
    end
end
for i=1:3
    for j=1:3
        G(i,j+3)=A(i,j);
    end
end

H=[A,E;
  D,B];

Hstich=H';

%4.13
C=round((rand(6,6)*5)+1);
I=diag(C)';
J=C(2:2:4,:);
K=C(:,1:5);









