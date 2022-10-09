%plotting a simple sine function in the interval [0,2*pi] 
x = [0:2*pi:100];
y = sin(x);
plot(x, y)
title('plot of function (sinx)');
xlabel('Input');
ylabel('Output');
figure
%plotting a simple cosine function in the interval [0,pi]
p=[0:pi:100];
q = cos(p);
plot(p, q)
title('plot of function (cosx)');
xlabel('Input');
ylabel('Output');
figure
%plotting a simple inverse sine function in the interval [-4,4]
m=[-4:4:100];
n= asin(m);
plot(m, n)
title('plot of function (asinx)');
xlabel('Input');
ylabel('Output');
figure

%formatting the plot with custom Linewidth and plot color for one of the examples:
b = [0:2*pi:100];
c = sin(b);
plot(b, c, 'r','Linewidth',1.9 )
title('plot of function (sinx)');
xlabel('Input');
ylabel('Output');
