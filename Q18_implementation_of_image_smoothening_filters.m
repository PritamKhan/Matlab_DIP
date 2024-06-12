% Read the image
img = imread('images/img1.png');
grayImg = rgb2gray(img);

% Apply mean and median filtering
meanFilteredImg = imfilter(grayImg, fspecial('average', [3 3]));
medianFilteredImg = medfilt2(grayImg, [3 3]);

% Display the results
figure;
subplot(1,3,1); imshow(grayImg); title('Original Image');
subplot(1,3,2); imshow(meanFilteredImg); title('Mean Filtered Image');
subplot(1,3,3); imshow(medianFilteredImg); title('Median Filtered Image');
