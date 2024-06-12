img = imread('images/img1.png');
grayImg = rgb2gray(img);
filteredImg = medfilt2(grayImg); 
edges = edge(filteredImg, 'Canny'); 
imshow(edges); title('Edge Detection using NonLinear Filtering');
