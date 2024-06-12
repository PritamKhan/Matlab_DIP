img = imread('images/img2.png');

grayImg = im2gray(img);

figure; 
subplot(3,2,1); imhist(grayImg); title('Histogram of Grayscale Image');

redChannel = img(:,:,1);
greenChannel = img(:,:,2);
blueChannel = img(:,:,3);

subplot(3,2,2); imhist(redChannel); title('Red Channel Histogram');
subplot(3,2,3); imhist(greenChannel); title('Green Channel Histogram');
subplot(3,2,4); imhist(blueChannel); title('Blue Channel Histogram');
