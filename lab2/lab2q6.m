
heads = 0;
niters = 0;

while heads < 100
    toss = round(rand());
    if toss == 0
        heads = heads + 1;
    end
    niters = niters + 1;
end

disp(niters);