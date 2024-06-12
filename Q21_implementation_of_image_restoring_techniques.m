img = imread('images/img19.jpg');

grayImg = im2gray(img);

% Restore using Wiener filter
restoredImg = wiener2(grayImg, [5 5]);

% Display the results
figure;
subplot(1,2,1); imshow(grayImg); title('Noisy Image');
subplot(1,2,2); imshow(restoredImg); title('Restored Image');

