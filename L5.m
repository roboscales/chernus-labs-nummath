%% Исходные данные
A = [0.45 0.0003 0.0008 0.0014;
 -0.0029 -0.52 -0.0018 -0.0012;
 -0.0055 -0.005 -1.31 -0.0039;
 -0.0082 -0.0076 -0.0070 -2.36];
b = [0.122; -0.2532; -0.9876; -2.0812];
%% Решение задачи
N_A = norm(A);
display(N_A,'Norm of matrix А');

n = 4;
for ci = 1:n;
c1(ci) = b(ci)./A(ci,ci);
end
c = c1';
display(c,'Matrix С');

for ci = 1:n
for cj = 1:n
 B(ci,cj) = -A(ci,cj) / A(ci,ci);
 B(ci,ci) = 0;
end
end
display(B,'Matrix B');
N_B = norm(B);
display(N_B,'Norm of matrix B');

%% Результаты
xx = zeros(4,1);
xx(:,1) = c;
eps = 1;
k = 2;
while eps > 1e-7
 xx(:,k) = B*xx(:,k-1) + c;

 eps = abs(xx(:,k) - xx(:,k-1));
 k = k + 1;
end
format long;
display(xx,'Approximations');

%% Проверка
X = linsolve(A,b);
display(X,'Checking');