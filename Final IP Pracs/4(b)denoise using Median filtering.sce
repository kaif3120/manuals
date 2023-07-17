clc;
clear all;
//a = uigetfile("*.*","Select the Image:- ");
a = imread("C:\Users\Iqra\Downloads\nature.jfif");
b1 = double(mtlb_double(a));
c = imnoise(a,"salt & pepper",0.2);
d = double(mtlb_double(c));
b = d;
m = (1/9) * ones(3,3);
[r1,c1] = size(mtlb_double(a));
for i =2:r1-1
for j = 2:c1-1
 a1 = [d(i-1,j-1), d(i-1,j), d(i-1,j+1), d(i,j-1), d(i,j), d(i,j+1), d(i+1,j-1), d(i+1,j), d(i+1,j+1)];
 a2 = gsort(a1,"g","i");
 med = a2(5);
 b(i,j) = med;
end
end
b = uint8(b);
subplot(2,2,1);
imshow(uint8(a));
title("Original Image");
subplot(2,2,2);
imshow(uint8(c));
title("Noisy Image");
subplot(2,2,3);
imshow(uint8(b));
title("Median Filtered Image");
