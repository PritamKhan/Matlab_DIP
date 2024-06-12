img = imread('images/img1.png');
grayImg = rgb2gray(img);

% Contrast stretching
stretchedImg = imadjust(grayImg);

% Histogram equalization
equalizedImg = histeq(grayImg);

% Display the results
figure;
subplot(3,2,1); imshow(grayImg); title('Original Image');
subplot(3,2,2); imhist(grayImg); title('Original Histogram');
subplot(3,2,3); imshow(stretchedImg); title('Contrast Stretched Image');
subplot(3,2,4); imhist(stretchedImg); title('Stretched Histogram');
subplot(3,2,5); imshow(equalizedImg); title('Histogram Equalized Image');
subplot(3,2,6); imhist(equalizedImg); title('Equalized Histogram');
