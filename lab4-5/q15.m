hold on;

x = 0:0.2:2;
r = 1;

xp = r*sin(0:0.1:2*pi+0.1);
yp = r*cos(0:0.1:2*pi+0.1);

plot(xp,yp);
plot(xp*1.5,yp*1.5);

axis equal;
axis([-2 2 -2 2]);

for i = 1:100
    positions = neutron_path(1, 1.5);
    plot(positions(:,1), positions(:,2), 'rx-');
end