function [a, d] = leastsquares(x, y, m)
A = zeros(m+1);
b = zeros(m+1, 1);
for ki = 1:(m+1)
for kj = 1:(m+1)
 A(kj, ki) = sum(x.^(kj + ki - 2));
end;
 b(ki) = sum(y.*x.^(ki - 1));
end;
a = linsolve(A,b);
a = flip(a');
e = y - polyval(a,x);
d = sqrt(sum(e.^2)/length(x));
end
