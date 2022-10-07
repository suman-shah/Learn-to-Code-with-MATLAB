%3D surface plot of wave function
k=1;
E0=5;
t=pi/4;
E=@(x,y) E0.*(cos(k.*cos(t).*x+k.*sin(t).*y));
fsurf(E);
