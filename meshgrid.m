%transforms our domain (x,y) into rectangular meshes for easy indexing
x=-5:0.1:5;
y=-5:0.1:5;
t=5;
w=1.3;
k=1.3;
[X,Y]=meshgrid(x,y);
R=(X.^2+Y.^2)^1/2;
u=20*cos(k*R+w*t);
surf(X,Y,u);
