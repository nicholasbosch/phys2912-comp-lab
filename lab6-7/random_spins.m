function state = random_spins(n)
    state = zeros(2, n);
    for x = 1:n
        phi = rand() * 2 * pi;
        theta = acos(2 * rand() - 1);
        state(:,x) = [cos(theta/2), exp(-1i * phi) * sin(theta/2)];
    end
end