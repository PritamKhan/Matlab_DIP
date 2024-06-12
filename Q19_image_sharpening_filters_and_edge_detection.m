img = imread('images/img1.png');
grayImg = rgb2gray(img);

% Sharpening using Laplacian filter
sharpenedImg = imfilter(grayImg, fspecial('laplacian', 0.2));
% Edge detection using gradient filter
edges = edge(grayImg, 'sobel');

figure;
subplot(1,3,1); imshow(grayImg); title('Original Image');
subplot(1,3,2); imshow(sharpenedImg); title('Sharpened Image');
subplot(1,3,3); imshow(edges); title('Edge Detection using Gradient Filter');
