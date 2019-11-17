function P = fun_omega(x)
n = length(x);
w = diag(x);
P = zeros(n-1,n);
for ci = 1:(n-1)
 a = poly(w(1:ci,1:ci));
%display(a)
 n1 = length(a);
for cj = 1:n1
 P(ci,n-n1+cj) = real(a(cj));
end;
%P(ci) = a;
end
end
