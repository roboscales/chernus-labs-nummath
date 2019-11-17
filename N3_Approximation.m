%% Исходные данные
x = [0.1:0.1:2];
y = [0.06 0.16 0.23 0.30 1.11 1.08 1.13 -0.36 -0.23 -0.47 -0.83 -0.92 -1.14 -1.43 -1.91 -2.26 -2.64 -3.05 -3.62 -4.02];
n = length(x);
%% Решение задачи разными методами
%Решение задачи при помощи функции leastsquares
[p1, err1] = leastsquares(x, y, 1);
y1 = polyval(p1, x);
[p2, err2] = leastsquares(x, y, 2);
y2 = polyval(p2, x);
[p3, err3] = leastsquares(x, y, 3);
y3 = polyval(p3, x);
[p4, err4] = leastsquares(x, y, 4);
y4 = polyval(p4, x);
display('В итоге для нашего примера имеем:')
display('коэффициенты многочленов:')
display(p1);
display(p2);
display(p3);
display(p4);
display([err1, err2, err3, err4], 'ошибки составляют...(d1, d2, d3, d4)');
%plot(x,y,'-k',x,y1,'--b',x,y2,'-.r',x,y3,':m');
plot(x,y,'o', x,y1,'b--', x,y2,'r-.');
legend('исходные данные','линейная модель','квадратичная модель');
