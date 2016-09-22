function C = mymult(A, B)
    n = length(A);
    C = zeros(n);
    for i = 1:n
        for j = 1:n
            c = 0;
            for k = 1:n
                c = c + A(i, k) * B(k, j);
            end
            C(i, j) = c;
        end
    end
end