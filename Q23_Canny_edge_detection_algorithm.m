img = imread('images/img1.png');
grayImg = rgb2gray(img);
edges = edge(grayImg, 'Canny');

imshow(edges); title('Canny Edge Detection');
