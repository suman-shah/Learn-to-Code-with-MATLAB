[X,Y,Z] = peaks(25);
CO(:,:,1) = zeros(25); % red
CO(:,:,2) = ones(25).*linspace(0.5,0.8,25); % green
CO(:,:,3) = ones(25).*linspace(0,1.2,25); % blue
surf(X,Y,Z,CO)
hold on

% Detect Minima
ix = find(imregionalmin(Z));
plot3(X(ix),Y(ix),Z(ix),'r*','MarkerSize',24)
hold on

% Detect Maxima
ix = find(imregionalmax(Z));
plot3(X(ix),Y(ix),Z(ix),'b*','MarkerSize',24)