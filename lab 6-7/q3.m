Sz = 1/2 * [1 0; 0 -1];
[eigvec, eigval] = eig(Sz);
psi = 1/sqrt(2) * [1; 1];

p_v = abs(eigvec'*psi).^2;