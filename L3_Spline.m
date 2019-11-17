%исходные данные
x = [0.295 0.302 0.311 0.318 0.324 0.331 0.338 0.344 0.351];
y = [3.2556 3.1765 3.1217 3.0485 2.9873 2.9192 2.8361 2.7774 2.6115];

pp = csape(x,y);
pp1 = csape(x,y,'complete');
pp2 = csape(x,y,'not-a-knot');
pp3 = csape(x,y,'periodic');
pp4 = csape(x,y,'second');
pp5 = csape(x,y,'variational');
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
legend(' default','complete','not-a-knot',...
'periodic','second','variational',...
'Location','northwest');