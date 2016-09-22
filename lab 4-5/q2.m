position = [0, 0];
angle = [cos(theta) sin(theta)];
velocity = 0.2 * angle;
theta = rand() * 2 * pi;
position = move_in_vacuum(position, velocity, 1);
p = 0.5;
tau = 1;
elasticity = 0.95;

xpos = [0 position(1)];
ypos = [0 position(2)];

t = [0];


hold on;

while norm(position) <= 2

    if norm(position) <= 1.5
        if norm(position) < 1
            position = move_in_vacuum(position, velocity, 1);
        else
            velocity = scatter_neutron(velocity, elasticity);
            position = move_in_shield(position, velocity, tau);
            if absorbed(p) == 1
                break;
            end
        end
    else
        position = position + velocity;
        break;
    end 
    
    t = [t t(end) + 1];
    xpos = [xpos position(1)];
    ypos = [ypos position(2)];
end

x = 0:0.2:2;
r = 1;

plot(xpos, ypos, 'rx-');

xp = r*sin(0:0.1:2*pi+0.1);
yp = r*cos(0:0.1:2*pi+0.1);

plot(xp,yp);
plot(xp*1.5,yp*1.5);

axis equal;
axis([-2 2 -2 2]);

hold off;
