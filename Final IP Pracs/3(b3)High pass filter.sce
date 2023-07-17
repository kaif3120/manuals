clear all;
clc;
a = imread('C:\Users\Iqra\Downloads\nature.jfif');
r = size(a,1);
c = size(a,2);
d0 = input("Enter the cutoff frequency (Radius) = ");
for u = 1:1:r
for v = 1:1:c
d = (((u-(r/2))^2) + ((v-(c/2))^2))^0.5;
if d <= d0
 h(u,v) = 0;
else
 h(u,v) = 1;
end
end
end
b = fft2(double(a));
c = fftshift(b);
c1 = uint16(c);
new = c.*h;
new2 = uint8(new);
new1 = abs(ifft(new));
subplot(1,2,1);
imshow(img);
title("Original Image");
subplot(1,2,2);
imshow(uint8(new1));
title(['Filtered Image with radius = ' string(d0)]);
