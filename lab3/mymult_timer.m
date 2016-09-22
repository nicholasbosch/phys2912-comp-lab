A = rand(1000);
B = rand(1000);

tic
C = A * B;
toc

tic
C = mymult(A, B);
toc
