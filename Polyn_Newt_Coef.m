function P = Polyn_Newt_Coef(M,a)
[h, w] = size(a);
P = zeros(h,w);
P(1,w) = M(1,2);
P(1,:) = P(1,:) + M(1,3)*a(1,:);
 for ci = 2:h
 P(ci,:) = P(ci-1,:) + M(1,ci+2)*a(ci,:);
 end
end
