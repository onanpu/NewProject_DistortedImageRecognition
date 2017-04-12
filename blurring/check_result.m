%% The distorted images are 180 degree inverted compared with the original images
%% check object results
clear all;close all;clc;
%% with object
load BL_all
I = 4115;
BL_all=BL_all';

X1=BL_all(I,:);
X1=vec2mat(X1,28);

X2=BL_all(I+1,:);
X2=vec2mat(X2,28);

X3=BL_all(I+2,:);
X3=vec2mat(X3,28);

X4=BL_all(I+3,:);
X4=vec2mat(X4,28);

X5=BL_all(I+4,:);
X5=vec2mat(X5,28);

figure(1)
subplot(5,1,1)
imshow(X1)


subplot(5,1,2)
imshow(X2)


subplot(5,1,3)
imshow(X3)


subplot(5,1,4)
imshow(X4)

subplot(5,1,5)
imshow(X5)



%% original data
load Blurring
Y1=Blurring(I,:);
Y1=vec2mat(Y1,28)';

Y2=Blurring(I+1,:);
Y2=vec2mat(Y2,28)';

Y3=Blurring(I+2,:);
Y3=vec2mat(Y3,28)';

Y4=Blurring(I+3,:);
Y4=vec2mat(Y4,28)';

Y5=Blurring(I+4,:);
Y5=vec2mat(Y5,28)';

figure(2)
subplot(5,1,1)
imshow(Y1)


subplot(5,1,2)
imshow(Y2)


subplot(5,1,3)
imshow(Y3)


subplot(5,1,4)
imshow(Y4)

subplot(5,1,5)
imshow(Y5)




%% The distorted images are 180 degree inverted compared with the original images


% clear all; close all; clc;
% 
% %% read data
% img = imread('5.png');
% img = rgb2gray(img);
% 
% %% locate white areas
% N = 255;
% c = randperm(N,1);
% img( img==255 )=c; 
% figure; imshow(img)

% clear all; close all; clc;
% 
% %% read data
% img = imread('5.png');
% img = rgb2gray(img);
% 
% %% locate white areas
% N = 255;
% c = randperm(N,1);
% img( img==255 )=c; 
% figure; imshow(img)