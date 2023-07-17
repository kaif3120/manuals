clc;
clear;
disp("Contrast Stretching")
a = imread("C:\Users\Shivam Mishra\Downloads\pokemon.jpg");
a1 = min(min(a));
b = max(max(a));
l = 0.5;
n = 0.5;
m = 3;
v = 1*a1;
w = v + (m * (b-a1));
[r,c] = size(a);
for i = 1:r
for j = 1:c
if (a(i,j) < a1)
 new (i,j) = 1*a(i,j);
elseif (a(i,j) >= a1 & a(i,j) <b)
 new(i,j) = (m*(a(i,j) -a1)) + v;
else
 new(i,j) = (n*(a(i,j) -b)) + w;
end
end
end
subplot(1,2,1);
imshow(a);
title("Original Image");
subplot(1,2,2);
new = double(new);
imshow(uint8(new));
title("After Contrast Stretching");
