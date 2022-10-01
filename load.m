disp('Contents of workspace before loading file:')
whos

disp('Contents of gong.mat:')
whos('-file','gong.mat')

load('gong.mat')
disp('Contents of workspace after loading file:')
whos
