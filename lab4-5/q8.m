tau = 1;
x = [0,0];
v = [1,1];
trials = zeros(1000, 1);
xpos = [];
ypos = [];
totDist = 0;
distance = [];


for i = 1:1000
    pos = move_in_shield(x, v, tau);
    xpos(i) = pos(1);
    ypos(i) = pos(2);
    distance(i) = norm([xpos(i) ypos(i)]);
    totDist = totDist + distance(i);
end

aveDist = totDist/i

histogram(distance);