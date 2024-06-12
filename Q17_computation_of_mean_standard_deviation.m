img = imread('images/img1.png');
grayImg = rgb2gray(img);

% Compute mean, standard deviation, and correlation coefficient
meanValue = mean(grayImg(:));
stdValue = std(double(grayImg(:)));
corrCoeff = corr2(grayImg, grayImg); % Auto-correlation

disp(['Mean: ', num2str(meanValue)]);
disp(['Standard Deviation: ', num2str(stdValue)]);
disp(['Correlation Coefficient: ', num2str(corrCoeff)]);
