clc;
clear all;
//a = uigetfile("C:\Program Files\scilab-6.1.1\IPCV\images\hand.jpg");
a = imread("C:\Users\Iqra\Downloads\nature.jfif");
b1 = double(a);
c = imnoise(a,'gaussian');
d = double(c);
b = d;
m = (1/9) * (ones(3,3));
[r1,c1] = size(a);
for i = 2:r1-1
for j = 2:c1-1
 a1 = d(i-1,j-1) + d(i-1,j) + d(i-1,j+1) + d(i,j-1) + d(i,j) + d(i,j+1) + d(i+1,j-1) + d(i+1,j) + d(i+1,j+1);
 b(i,j) = a1 * (1/9);
end
end
subplot(2,2,1);
imshow(uint8(a));
title("Original Image");
subplot(2,2,2);
imshow(uint8(c));
title("Noisy Image");
subplot(2,2,3);
imshow(uint8(b));
title("Filtered Image");
