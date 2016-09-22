n_atoms = 1000;
states = random_spins(n_atoms);
[outcomes, fstates] = measure_z(states);
[outcomes, fstates] = measure_z(fstates(:,(outcomes == 0.5)));
plot_stern_gerlach(outcomes);