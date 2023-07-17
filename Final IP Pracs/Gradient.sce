clc;
clear;
img=imread('C:\Program Files\scilab-6.1.1\IPCV\images\Cameraman.jpeg');
se = imcreatese('rect',3,3);
img_dilate = imdilate(img,se);
img_erode = imerode(img_dilate,se);
g=img_dilate-img_erode;

subplot(2,2,1),imshow(img),title('Orignal Image');
subplot(2,2,2),imshow(img_dilate),title('Dilation Image');
subplot(2,2,3),imshow(img_erode),title('Erotion Image');
subplot(2,2,4),imshow(g),title('Gradient Image');
