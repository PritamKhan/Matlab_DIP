img = imread('images/img2.png');
grayImg = rgb2gray(img);
F = fft2(double(grayImg)); % 2D Fourier transform
F_shifted = fftshift(F); % Shift zero frequency component to center
magnitude = abs(F_shifted); % Get the magnitude
imshow(log(1 + magnitude), []); title('Fourier Transform');
