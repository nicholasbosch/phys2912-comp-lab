marks = [37.5 55.0 99.0 5.0 75.0 66.0 59.5 64.5 77.0 73.0 70.0 85.0;
          65.0 72.0 32.5 66.5 88.5 99.5 90.0 9.0 50.0 51.0 65.0 65.0;
          70.0 77.0 54.0 86.0 88.0 45.0 49.0 78.0 4.0 32.0 77.0 90.0;
          92.0 95.0 78.0 67.0 87.0 68.0 51.0 50.0 8.0 99.5 97.0 92.0];



[nclasses, nstudents] = size(marks); %if you are not familiar with this type help size in Command Windows before asking your tutor

for class = 1:nclasses
    average = mean(marks(class,:));
    if average >= 65
        disp([class average]);
    end
end
