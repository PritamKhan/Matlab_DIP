img = imread('images/img2.png');
grayImg = rgb2gray(img);
F = fft2(double(grayImg));
F_shifted = fftshift(F);
[rows, cols] = size(F_shifted);
crow = round(rows/2);
ccol = round(cols/2);
d = 30; % Radius of the filter
% Create a low-pass filter mask
mask = zeros(rows, cols);
mask(crow-d:crow+d, ccol-d:ccol+d) = 1;
% Apply the mask to the shifted Fourier transform
F_filtered = F_shifted .* mask;
% Inverse Fourier transform to get the image back
F_ishifted = ifftshift(F_filtered);
img_filtered = ifft2(F_ishifted);
img_filtered = abs(img_filtered);
imshow(img_filtered, []); title('Image with High Frequency Components Removed');
