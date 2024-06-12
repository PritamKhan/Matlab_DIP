img = imread('images/img1.png');
grayImg = rgb2gray(img);
[cA, cH, cV, cD] = dwt2(grayImg, 'haar'); % Apply 2D discrete wavelet transform
figure;
subplot(2,2,1); imshow(cA, []); title('Approximation');
subplot(2,2,2); imshow(cH, []); title('Horizontal Detail');
subplot(2,2,3); imshow(cV, []); title('Vertical Detail');
subplot(2,2,4); imshow(cD, []); title('Diagonal Detail');
