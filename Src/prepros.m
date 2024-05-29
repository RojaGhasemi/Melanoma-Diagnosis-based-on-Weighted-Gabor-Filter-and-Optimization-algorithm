clc;
clear all;
close all;
[FileName, PathName] = uigetfile({'*.jpg;*.tif;*.png;*.gif','All Image Files'},'Select an Image');
fpath = strcat(PathName, FileName);
img = imread(fpath);
img=imresize(img,[256 256]);
figure;
imshow(img);
% % % % % % % % % % % % % % % % % % % % % % % % % % 
waitforbuttonpress
point1 = get(gca,'CurrentPoint'); % button down detected
x1=point1(1,1)
y1=point1(1,2)
waitforbuttonpress
point2 = get(gca,'CurrentPoint'); % button down detected
x2=point2(1,1)
y2=point2(1,2)

I = imcrop(img,[x1 y1 x2-x1 y2-y1]);
imwrite(I,strcat('C:\Users\robotic1981\Documents\MATLAB\palmprint racognition\', 'IMG_005 (5).JPG'));

