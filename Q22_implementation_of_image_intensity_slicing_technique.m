img = imread('images/img1.png');
grayImg = rgb2gray(img);
% Intensity slicing
slicedImg = grayImg;
slicedImg(grayImg > 100 & grayImg < 200) = 255; % Enhance intensity values between 100 and 200

figure;
subplot(1,2,1); imshow(grayImg); title('Original Image');
subplot(1,2,2); imshow(slicedImg); title('Intensity Sliced Image');
