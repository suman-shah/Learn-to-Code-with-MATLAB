load seamount
step_size = 0.01;
[xq,yq] = meshgrid(min(x)-1:step_size:max(x)+1, min(y)-1:step_size:max(y)+1);
zq = griddata(x,y,z,xq,yq);
mesh(xq,yq,zq)