img = imread('images/img1.png');
grayImg = rgb2gray(img);

% 1-D FFT of a single row
row = grayImg(128, :); % Choosing 128th row
fft1D = fft(row);
figure;
subplot(1,2,1); plot(abs(fft1D)); title('1-D FFT of a Row');

% 2-D FFT of the image
fft2D = fft2(grayImg);
fft2D_shifted = fftshift(fft2D);
magnitude = abs(fft2D_shifted);
subplot(1,2,2); imshow(log(1 + magnitude), []); title('2-D FFT of Image');
