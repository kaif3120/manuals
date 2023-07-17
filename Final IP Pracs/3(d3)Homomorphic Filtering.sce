clc;
clear all;
a=imread("C:\Users\Iqra\Downloads\nature.jfif");
a = double(a);
[row col] = size(a);
D0 = input('Enter cut-off frequecny : ');
for u = 1:row
 for v = 1:col
 D = ((u-(row/2))^2 + (v-(col/2))^2)^0.5;
 if D<D0 //%High pass filter
 H(u,v) = 0;
 else 
 H(u,v) = 1;
 end
 end
end
A=1.5; //%high boost factor 
H1 = (A-1)+H; //%high boost filter
ftImg = fft2(a); shftImg = fftshift(ftImg);
x = shftImg.*H; //%multiply by high pass filter
x1 = shftImg.*H1; //%multiply by high boost filter
X = abs(ifft(x)); 
X1 = abs(ifft(x1)); 
figure(1);
imshow(uint8(a)); 
title('Original Image'); 
figure(2);
mesh(H);
title('Frequency Response of high pass filter'); 
figure(3);
imshow(uint8(X));
title('High pass filtered Image'); 
figure(4);5
imshow(uint8(X1)); 
title('High Boost Filtered Image');
