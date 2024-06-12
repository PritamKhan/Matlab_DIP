img = imread('images/img1.png');
grayImg = rgb2gray(img);

% DCT compression
dctImg = dct2(grayImg);
% Zero out small coefficients
dctImg(abs(dctImg) < 10) = 0;
compressedImg = idct2(dctImg);

% Display the results
figure;
subplot(1,2,1); imshow(grayImg); title('Original Image');
subplot(1,2,2); imshow(compressedImg, []); title('Compressed Image using DCT');
