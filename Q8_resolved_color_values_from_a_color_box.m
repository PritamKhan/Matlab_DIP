img = imread('images/img1.png');
imshow(img);
[x, y] = ginput(1); % Get the coordinates from the user click
x = round(x);
y = round(y);
r = img(y, x, 1);
g = img(y, x, 2);
b = img(y, x, 3);
disp(['R: ', num2str(r), ' G: ', num2str(g), ' B: ', num2str(b)]);
