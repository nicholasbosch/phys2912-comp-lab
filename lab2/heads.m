function niters = heads(n)
    
    niters = 0;
    heads = 0;
    
    while heads < n
        toss = round(rand());
        if toss == 0
            heads = heads + 1;
        end
        niters = niters + 1;
    end
    
end