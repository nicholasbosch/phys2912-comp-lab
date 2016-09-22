
heads = 0;
tails = 0;
niters = 0;

while heads < 100 || tails < 100
    toss = round(rand());
    if toss == 0
        heads = heads + 1;
    else
        tails = tails + 1;
    end
    niters = niters + 1;
end

disp(['iterations: ' num2str(niters) ' heads: ' num2str(heads) ' tails: ' num2str(tails)]);