% Example on how to plot the maxima and minima points on a curve
% Uses findpeaks() method
n = -2*pi:0.01:2*pi;
y = sin((n));
plot(n,y);

%plot maxima
[Maxima,MaxIdx] = findpeaks(y);
hold on;
plot(n(MaxIdx),Maxima,'r*');

%plot minima
[Minima,MinIdx] = findpeaks(-y);
plot(n(MinIdx),-Minima,'g*');
hold off;