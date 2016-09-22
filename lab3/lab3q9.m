
nmin = 10;
nmax = 2000;

nrange = nmin:nmax;
times = zeros(1,length(nrange));

for n = nrange
    A = rand(n);
    B = rand(n);
    
    tstart = tic;
    A * B;
    times(n - nmin + 1) = toc(tstart);
end

p = polyfit(nrange, times, 3);
y1 = polyval(p, nrange);
plot(nrange, times);
hold on
plot(nrange, y1);
hold off