clc;
clear all;
subplot(2,2,1);
i=imread('C:\Users\Shivam Mishra\Downloads\pokemon.jpg');
i=double(i);
imshow(uint8(i));
title('original image')
k = floor(i*256)/64;
subplot(2,2,2);
imshow(uint8(k));
title('quantization 64')
k = floor(i*255)/32;
subplot(2,2,3);
imshow(uint8(k));
title('quantization 32')
k = floor(i*255)/32;
subplot(2,2,4);
imshow(uint8(k));
title('quantization 16')
k = floor(i*255)/16;
