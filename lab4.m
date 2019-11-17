%% Исходные данные
x = [0.295 0.302 0.311 0.318 0.324 0.331 0.338 0.344 0.351];
y = [3.2556 3.1765 3.1217 3.0485 2.9873 2.9192 2.8361 2.7774 2.6115];

x1 = linspace(0.295,0.351,100);
y1 = interp1(x,y,x1,'spline');
y2 = interp1(x,y,x1);
figure(2)
plot(x,y,'o',x1,y1,'-',x1,y2,'k--');
legend('Исходные точки','Кубический сплайн',...
'Линейная интерполяция','Location','northwest');
grid on;

xx = [0.295:0.0005:0.351]; %#ok<NBRAK>
yy = spline(x,y,xx);
figure(1)
plot(x,y,'o',x1,y1,'.',x1,y2,'k--',xx,yy,'k');
legend('Исходные точки','Кубический сплайн interp1','Линейная интерполяция','Кубический сплайн','spline','Location','northwest');
grid on;

pp = csape(x,y);
pp1 = csape(x,y,'complete'); % 3-rd way of start 
pp2 = csape(x,y,'not-a-knot');
pp3 = csape(x,y,'periodic');
pp4 = csape(x,y,'second');
pp5 = csape(x,y,'variational'); %w0 = wn = 0
figure(3)
fnplt(pp,0.5);
hold on
fnplt(pp1,'--k');
fnplt(pp2,'.');
fnplt(pp3,'m',0.5);
fnplt(pp4,'--b',2);
fnplt(pp5,'-.r',1);
hold off
grid on
legend(' Сплайн','Известен наклон','Вторые производные постоянны на промежутках',...
'periodic','Значения заданы(редко)','Естественный',...
'Location','northwest');


