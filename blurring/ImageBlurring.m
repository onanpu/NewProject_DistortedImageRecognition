%% Blurring images
clear all; close all; clc;

%% data split
%1:2000    motion(M)=3    
%2001:4000 motion(M)=5
%4001:6000 motion(M)=8
%6001:7000 motion(M)=10

BL_5=[]; M=5;
load Blurring
L = length(Blurring(:,1));

tic
for i = 2001:4000
    img = Blurring(i,:);
    img = vec2mat(img,28);
    img1 = im2uint8(img);
%     figure, imshow(img1)
    h = fspecial('motion',M,M); 
    BImg = imfilter(img1,h,'replicate'); 
%     figure, imshow(BImg)

    BImg=BImg(:);
    BL_5 = [BL_5 BImg];
end
toc
save BL_5 BL_5

% originalRGB = imread('5.png'); 
% originalRGB =rgb2gray(originalRGB);
% h = fspecial('motion',50,45); 
% % filteredRGB = imfilter(originalRGB,h); 
% % figure, imshow(originalRGB), figure, imshow(filteredRGB)
% boundaryReplicateRGB = imfilter(originalRGB,h,'replicate'); 
% figure, imshow(boundaryReplicateRGB)


