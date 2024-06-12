img = imread('images/img1.png');
grayImg = rgb2gray(img);
[rows, cols] = size(grayImg);

% Example: Displaying the intensity difference with right neighbor
diffImg = zeros(rows, cols-1);
for i = 1:rows
    for j = 1:cols-1
        diffImg(i,j) = abs(grayImg(i,j) - grayImg(i,j+1));
    end
end

imshow(diffImg, []); title('Intensity Difference with Right Neighbor');
