img = imread('images/img1.png');
grayImg = rgb2gray(img);

% Example: Rotation
rotatedImg = imrotate(grayImg, 45); % Rotate image by 45 degrees
imshow(rotatedImg); title('Rotated Image');
