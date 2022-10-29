% Generate 3D plots in MATLAB.
% Define x,y,z in parametric form (t)


t = 0:pi/500:pi;
xt1 = sin(t).*cos(10*t);
yt1 = sin(t).*sin(10*t);
zt1 = cos(t);

xt2 = sin(t).*cos(12*t);
yt2 = sin(t).*sin(12*t);
zt2 = cos(t);

plot3(xt1,yt1,zt1,xt2,yt2,zt2)
