marks = [37.5 55.0 99.0 5.0 75.0 66.0 59.5 64.5 77.0 73.0 70.0 85.0];

% a)
passes = marks(marks >= 50);
fails = marks(marks < 50);

disp(passes);
disp(fails);

% b)
passes = [];
fails = [];
for i = 1:length(marks)
    if marks(i) >= 50
        passes = [passes marks(i)];
    else
        fails = [fails marks(i)];
    end
end

disp(passes);
disp(fails);
