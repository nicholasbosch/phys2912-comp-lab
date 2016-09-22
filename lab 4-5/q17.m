
thickness = 0.05:0.05:2;
count = length(thickness);
escapedCount = 0;
percentageEscaped = [];

for t = thickness
    escapedCount = 0;
    for j = 1:10000
        positions = neutron_path(1, 1 + t);
        if norm([positions(end, 1) positions(end, 2)]) > 1 + t
            escapedCount = escapedCount + 1;
        end
    end
    percentageEscaped = [percentageEscaped escapedCount / 10000];
end

plot(thickness, percentageEscaped);