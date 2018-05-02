function step = stepsize( v )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
x1=v(1);
x2=v(1);
for i=1:1:length(v)
  if v(i) ~= x1
      x2=v(i);
      break;
  end
end
step=abs(x2-x1);

end

