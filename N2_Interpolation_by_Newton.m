%% Исходные данные
x = [1.19 1.97 2.74 3.57 4.34];
y = [66.9659 61.3658 58.5558 54.5807 50.2229];
xt = 2.070;
%% Расчет значений
M = divided_differences(x,y);
display('Матрица разделенных разностей')
display(M);

a = fun_omega(x); %
P = Polyn_Newt_Coef(M,a);
% Р - коэффициенты многочлена Ньютона
n = length(x);
xx = zeros(n-1,1);
 for ci = 1:(n-1)
 xx(ci) = polyval(P(ci,:),xt);
 end
format long
display('Ответ');
display(xx);
format short

x_plot = [1.19:0.01:4.34];
y_plot = polyval(P(4,:),x_plot);
plot(x, y, 'o', x_plot, y_plot);
%gridon;
legend('исходные данные', 'многочлен Ньютона');