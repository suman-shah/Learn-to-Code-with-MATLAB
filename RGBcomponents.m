% Generate RGB components of the image using MATLAB.
% Read the image
image = imread('peppers.png');

% Split the image into its RGB components
red = image(:, :, 1);
green = image(:, :, 2);
blue = image(:, :, 3);

% Display the RGB components
subplot(1, 3, 1);
imshow(red);
title('Red Channel');

subplot(1, 3, 2);
imshow(green);
title('Green Channel');

subplot(1, 3, 3);
imshow(blue);
title('Blue Channel');
