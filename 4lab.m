%% �������� ������
x = [0.593 0.598 0.605 0.613 0.619 0.627 0.632];
y = [0.53305 0.53464 0.54160 0.54324 0.54043 0.55598 0.55843];

%% ������� ������
qx = x;
qy = interp1(x,y,qx);
figure(1)
38
plot(x,y,'o',qx,qy);
legend('�������� �����','�������� ������������',...
'Location','northwest');
grid on;

