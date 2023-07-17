clc;
close all;
clear all;
a = imread("C:\Users\Shivam Mishra\Downloads\pokemon.jpg");
a = double(a);
[row,col] = size(a);
D0 = 1 ;
for u = 1:row
for v = 1:col
 D = ((u-(row/2))^2 + (v - (col/2))^2)^0.5;
 if D < D0
 H(u,v) = 0;
 H = H(u,v);
 else
 H(u,v) = 1;
 H = H(u,v);
 end
end
end
A = 1.5;
H1 = (A-1) + H;
ftImg = fft2(a);
shftImg = fftshift(ftImg);
x = shftImg*H;
x1 = shftImg*H1;
X = abs(ifft(x));
X1 = abs(ifft(x1));
figure(1);
imshow(uint8(a)); 
title('Original Image'); 
//figure(2);
//mesh(H);
//title('Frequency Response of high pass filter'); 
figure(3);
imshow(uint8(X));
title('High pass filtered Image'); 
figure(4);
imshow(uint8(X1)); 
title('High Boost Filtered Image');
