function [ y ] = sprung( x,d )
%SPRUNG Summary of this function goes here
%   Detailed explanation goes here
y=x;
for i=1:length(x)
    if(x(i)<d)
        y(i)=0;
    else
        y(i)=1;
    end
end

