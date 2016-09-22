function [outcomes, fstates] = measure_z(states)
    
    dims = size(states);
    n = dims(2);
    
    outcomes = zeros(1, n);
    fstates = zeros(2, n);
    
    operator = 1/2 * [1 0; 0 -1];
    [eigvec, eigval] = eig(operator);
    
    for j = 1:n
        
        state = states(:,j)/norm(states(:,j));
       
        p1 = abs(eigvec(:,1)'*state)^2;
        %p2 = abs(eigvec(:,2)'*state)^2;
        
        if rand() <= p1
            a_n = eigvec(:,1);
            outcomes(j) = eigval(1, 1);
        else
            a_n = eigvec(:,2);
            outcomes(j) = eigval(2, 2);
        end
        
        fstates(:,j) = a_n * (a_n' * state) / sqrt((state' * a_n) * (a_n' * state));
        
    end

end