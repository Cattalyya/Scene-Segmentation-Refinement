imPath = 'images/';
predPath = 'predictions/';
annoPath = 'annotations/';
filename = '';

img = imread(strcat(imPath,filename));       % RGB img
imgBW = rgb2gray(img);
predImg = imread(strcat(predPath,filename)); % label prediction img
annoImg = imread(strcat(annoPath,filename)); % ground truth

%% Sobel %%%%%
% edgeImg = edge(imgBW,'sobel')

%% Canny %%%%%
% edgeImg = edge(imgBW,'canny')

%% gradient thresholding %%%%%
edgeImg = findEdge(imgBW,50);   % hard-code values
% edgeImg = findAvgEdge(imgBW); % average values
% edgeImg = findPercentEdge(imgBW,75);  % certain percentile
% edgeImg = findNeighborEdge(imgBW,5);  % neighbor average

newPredImg = regroup(predImg, edgeImg);




