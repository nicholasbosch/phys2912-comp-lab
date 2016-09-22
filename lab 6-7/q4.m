Sz = 1/2 * [1 0; 0 -1];
[eigvec, eigval] = eig(Sz);
psi = 1/sqrt(2) * [1; 1];

a_n = eigvec(:,1);

psi = a_n * (a_n' * psi) / sqrt((psi' * a_n) * (a_n' * psi));
disp(psi);