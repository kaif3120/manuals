clear all;
clc;
I = imread('C:\Users\Shivam Mishra\Downloads\pokemon.jpg');
GM = im2double(I);
t = 512;
p = 1/t:1/t:1;
for k = 1:t
l(k,:) = p(:);
end

product = GM.*1;5
log_GM = log(GM + 1);
log_product = log(product + 1); 5
fft_GM = (fftshift(fft2(log_GM)));
fft_product = (fftshift(fft2(log_product)));
diff_ill = (fft_product - fft_GM);
restored = (fft_product - diff_ill);
restored_im = ifft(restored);
restored_image = exp(restored_im) - 1;
abs_restored_image = abs(restored_image);

subplot(2,2,1);
imshow(uint8(I));
title("Original Image");

subplot(2,2,2);
imshow(log_product);
title("Corrupted Image");

subplot(2,2,3);
imshow(abs_restored_image);
title("Restored Image");

