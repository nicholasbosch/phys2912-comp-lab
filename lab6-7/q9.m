
n_atoms = 3000;
n = 1000;
probs = zeros(1, n);

for i = 1:n
    states = random_spins(n_atoms);
    [outcomes, fstates] = measure_z(states);
    probs(i) = length(outcomes(outcomes == 0.5))/length(outcomes);
end

hist(probs);
axis([0 1 0 300]);