A = [1 5; 2 -3];
B = [3 -2; 1 2];

% 1
max(max(B .^ 2))

% 2
A(A > B)

% 3
C = abs(A) - abs(B)

% 4
A = [A; zeros(1, 2)]
