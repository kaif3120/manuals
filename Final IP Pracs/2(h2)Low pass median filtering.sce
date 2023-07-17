clc;
clear;
disp(" Low Pass Median Filtering")
a = imread("C:\Users\Iqra\Downloads\nature.jfif");
b = double(a);
c = imnoise(a,'salt & pepper',0.2);
d = double(c);
m = (1/9) * (ones(3,3));
[r1,c1] = size(a);
for i=2:r1-1
for j=2:c1-1
a1 = [d(i-1,j-1) d(i-1,j) d(i-1,j+1) d(i,j-1) d(i,j) d(i,j+1) d(i+1,j-1) d(i+1,j) d(i+1,j+1)];
a2 = gsort(a1);
med = a2(4);
b(i,j) = med;
end
end
subplot(1,2,1);
imshow(a);
title("Original Image");
subplot(1,2,2);
imshow(uint8(b));
title("Image after Low Pass Median Filtering");
