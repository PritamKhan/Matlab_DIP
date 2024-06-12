img = imread('images/img2.png');
grayImg = rgb2gray(img);
edgesSobel = edge(grayImg, 'Sobel');
edgesPrewitt = edge(grayImg, 'Prewitt');
edgesCanny = edge(grayImg, 'Canny');

figure;
subplot(1,3,1), imshow(edgesSobel), title('Sobel Edge Detection');
subplot(1,3,2), imshow(edgesPrewitt), title('Prewitt Edge Detection');
subplot(1,3,3), imshow(edgesCanny), title('Canny Edge Detection');
