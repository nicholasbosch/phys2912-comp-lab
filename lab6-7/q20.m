% operators
Sz = 1/2 * [1 0; 0 -1];
Sx = 1/2 * [0 1; 1 0];

% parameters
theta_range = 0:0.01*2*pi:2*pi;
n_atoms = 10000;
probs = zeros(1, length(theta_range));
i = 1;

for theta = theta_range
    Stheta = 1/2 * [cos(theta), sin(theta); sin(theta), -cos(theta)];
    states = random_spins(n_atoms);
    [outcomes1, fstates1] = measure(states, Sz);
    % Found our issue here, we needed to be using outcomes > 0 rather than outcomes == 0.5 
    [outcomes2, fstates2] = measure(fstates1(:,(outcomes1 > 0)), Stheta);
    [outcomes3, fstates3] = measure(fstates2(:,(outcomes2 > 0)), Sz);
    probs(i) = length(outcomes3(outcomes3 >0))/length(outcomes1);
    i = i + 1;
end

plot(0:0.01 * 2 * pi:2 * pi, probs);
xlabel('$\theta$ (rad)', 'Interpreter', 'LaTex', 'FontSize', 20);
ylabel('$\left| \left\langle + | \psi\right\rangle\right|^2$','Interpreter', 'LaTex', 'FontSize',20);

