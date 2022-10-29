data = thingSpeakRead(12397,'Fields',[2 3 4 6],'DateRange',[datetime('January 7, 2018'),datetime('January 9, 2018')],...
    'outputFormat','table');
inputs = [data.Humidity'; data.TemperatureF'; data.PressureHg'; data.WindSpeedmph'];
tempC = (5/9)*(data.TemperatureF-32);
b = 17.62;
c = 243.5;
gamma = log(data.Humidity/100) + b*tempC ./ (c+tempC);
dewPointC = c*gamma ./ (b-gamma);
dewPointF = (dewPointC*1.8) + 32;
targets = dewPointF';
net = feedforwardnet(10);
[net,tr] = train(net,inputs,targets);
output = net(inputs(:,5))
