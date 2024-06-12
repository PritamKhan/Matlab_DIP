img = imread('images/img1.png');
grayImg = rgb2gray(img);

% Display bit planes
figure;
for k = 1:8
    bitPlane = bitget(grayImg, k);
    subplot(2, 4, k); imshow(logical(bitPlane)); title(['Bit Plane ', num2str(k)]);
end
