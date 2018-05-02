function v = visk( t,p,c )
%VISK Summary of this function goes here
%   Detailed explanation goes here
v= (c(1)+c(2).*t+c(3).*p + ((c(4).*t).*p)+c(5).*t.^2+c(6).*p.^2) /((1+c(8).*t+c(9).*p));

return;
end

