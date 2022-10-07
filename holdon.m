%hold on command in matlab comes in handy while plotting 2 or more functions on the same plot as shown
r=linspace(-2,10);
k=1;
n1=0.5*k.*r.^2+(1/6*0.001*r.^3);
n2=0.5*k.*r.^2+(1/6*0.01*r.^3);
n3=0.5*k.*r.^2+(1/6*0.05*r.^3);
plot(r,n1);
hold on
plot(r,n2);
hold on
plot(r,n3);
