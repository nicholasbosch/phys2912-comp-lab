a = [-10 20 -30 40 -50 60];
b = [-7 2 -8 3 -9 -4];

% 1
a(a > 0)

% 2
b(b <= -4)

% 3
a(b < 0)

% 4
b(b ~= 3)

% 5
length(a(a < 0))