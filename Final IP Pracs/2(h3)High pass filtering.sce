clc;
clear;
disp(" High Pass Filtering")
a = imread('C:\Users\Iqra\Downloads\nature.jfif');
d = double(a);
[r1,c1] = size(a);
m = [-1 -1 -1;-1 8 -1;-1 -1 -1];
for i=2:1:r1-1
for j=2:1:c1-1
 new(i,j) = (m(1)*d(i-1,j-1)) + (m(2)*d(i-1,j)) + (m(3) * d(i-1,j+1)) + (m(4)* d(i,j-1)) + (m(5) * d(i,j)) + (m(6) *d(i,j+1)) + (m(7) * d(i+1,j-1)) + (m(8) * d(i+1,j)) + (m(9) * d(i+1,j+1));
end
end
subplot(1,2,1);
imshow(a);
title("Original Image");
subplot(1,2,2);
imshow(uint8(new));
title("Image after High Pass Filtering");
