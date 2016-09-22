Sz = 1/2 * [1 0; 0 -1];
Sx = 1/2 * [0 1; 1 0];

n_atoms = 1000;
states = random_spins(n_atoms);
[outcomes, fstates] = measure(states, Sz);
[outcomes, fstates] = measure(fstates(:,(outcomes == 0.5)), Sx);
[outcomes, fstates] = measure(fstates(:,(outcomes == 0.5)), Sz);
plot_stern_gerlach(outcomes);
