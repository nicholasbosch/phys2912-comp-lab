A = [1, 1; -2, 4];
[eigvec, eigval] = eig(A);

disp([A * eigvec(:,1) eigval(1, 1) * eigvec(:,1)]);
disp([A * eigvec(:,2) eigval(2, 2) * eigvec(:,2)]);