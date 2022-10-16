
image_input = imread('Data4.jpeg');
[width,height] = size(image_input);

if width>320
image_input = imresize(image_input,[320 NaN]);
end

% Create a cascade detector object.
faceDetector = vision.CascadeObjectDetector();

%finding the bounding box that encloses the face on video frame
face_Location = step(faceDetector,image_input);

% Draw the returned bounding box around the detected face.
image_input= insertShape(image_input, 'Rectangle', face_Location);
figure; 
imshow(image_input); 
title('Face Detection');