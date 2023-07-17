clc;
close;
original = imread('C:\Users\Shivam Mishra\Downloads\pokemon.jpg');
im_red = original(:,:,1);
im_green = original(:,:,1);
im_blue = original(:,:,3);
subplot(3,3,1);
imshow(original);
title("Original");
subplot(3,3,2);
imshow(im_red);
title("Red");
r = size(im_red,1);
c = size(im_red,2);
h = zeros(1,256);
for i = 1:r
for j = 1:c
if (im_red(i,j) == 0)
 im_red(i,j) = 1;
end
k = im_red(i,j);
h(k) = h(k) + 1;
end
end
subplot(3,3,3);
plot(h);
title("Histogram of the Red Image");
subplot(3,3,4);
plot(im_green);
title("Histogram of the Green Image");
subplot(3,3,5);
plot(im_blue);
title("Histogram of the Blue Image");
a = size(im_blue,1);
b = size(im_blue,2);
x = zeros(1,256);
for i = 1:a
for j = 1:b
if (im_blue(i,j) == 0)
 im_blue(i,j) = 1;
end
y = im_blue(i,j);
x(y) = x(y) + 1;
end
end
subplot(3,3,6);
plot(x);
title("Histogram of the Blue Image");
