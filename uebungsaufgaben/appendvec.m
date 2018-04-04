function [ y ] = appendvec( u,v )
%APPENDVEC Summary of this fun,ction goes here
%   Detailed explanation goes here
y=u;
for i=1:length(v)
   y(length(u)+i)= v(i);
end

end

