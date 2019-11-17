function M = divided_differences(x,y)
n = length(x);
M = zeros(n, n+1);
M(:,1) = x';
M(:,2) = y';
for ci = 1:(n-1)
for cj = 1:(n-ci)
M(cj, ci+2) = (M(cj+1, ci+1) - M(cj, ci+1)) / (x(ci+cj) - x(cj));
end;
end;
end
