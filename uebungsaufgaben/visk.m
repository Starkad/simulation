function v = visk( t,p,c )
%VISK Summary of this function goes here
%   Detailed explanation goes here
% v= ((c(1) + c(2).*t+c(3).*p + ((c(4).*t).*p) + c(5).*t.^2 + c(6).*p.^2)) ...
%         /(( 1+ c(7).*t + c(8).*p));
T=t;
a=c;
nue_approx= (a(1) + T*a(2) + p*a(3) + T.*p*a(4) +...
    T.^2*a(5) + p.^2*a(6) )./ ( 1 + T*a(7) + p*a(8));
v=nue_approx;
return;
end

