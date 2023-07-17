clc;
clear all;
a = imread('C:\Users\Shivam Mishra\Downloads\pokemon.jpg');
b = double(a)
subplot(1,2,1);
imshow(a);
title('Original Image');
k = 1;
gamma = 1;
[m,n] = size(b);
for i=1: m
for j=1: n
c(i,j) = k*(b(i,j)^gamma);
end
end
subplot(1,2,2);
imshow(uint8(c));
title('Power Law Image');
