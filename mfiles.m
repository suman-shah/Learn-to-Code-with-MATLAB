mkdir progs    % create directory progs under default directory
chdir progs    % changing the current directory to progs
edit  prog1.m  % creating an m file named prog1.m

NoOfStudents = 6000;
TeachingStaff = 150;
NonTeachingStaff = 20;

Total = NoOfStudents + TeachingStaff ...
   + NonTeachingStaff;
disp(Total);