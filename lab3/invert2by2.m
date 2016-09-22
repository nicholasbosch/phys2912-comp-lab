function A_inv = invert2by2(A)
    A_inv = (1/det(A)) * [A(2, 2), -A(1, 2); -A(2, 1), A(1, 1)];
end