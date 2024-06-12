img = imread('images/img2.png');
grayImg = rgb2gray(img);
gradmag = imgradient(grayImg); % Compute the gradient magnitude
L = watershed(gradmag); % Apply watershed transform
Lrgb = label2rgb(L); % Convert label matrix to RGB image
imshow(Lrgb); title('Watershed Transform Segmentation');
