clc
clear all
close all
%DSP LAB
%Experiment 6
%QUestion 1 : FIR Low Pass filter

t_w = 500/10000; 
N = floor(4.32/t_w);
M = floor((N-1)/2);
n = -M:M;
beta = 6.76;
w_n = inot(beta*((1-((2.*n/(N-1)).^2)).^0.5))./inot(beta);
figure()
plot(n,w_n)
fc =1200/10000;
h_d_n = (-2*fc*sin(n*2*pi*fc))./(n*2*pi*fc);
h_d_n(round(N/2)) =1 - 2*fc;
figure()
stem(n,h_d_n)

h_n = w_n.*h_d_n;

figure()
stem(n,h_n);

ff = -pi:0.00001:pi;


for q = 1:length(ff)
 w = ff(q);
 temp = h_n.*exp(-1i*w.*n);
 h(q) = sum(temp);

end
figure()
plot(ff,abs(h))

figure()
plot(ff,angle(h))

function out = inot(x)
out = zeros(1,length(x));
for i=0:50
    out = out + 1*((0.25*(x.^2)).^i)./(factorial(i)^2);
end
end
