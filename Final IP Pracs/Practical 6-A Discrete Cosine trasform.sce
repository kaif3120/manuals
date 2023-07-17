clc;
clear all;
x1 = imread("C:\Users\Shivam Mishra\Downloads\pokemon.jpg");
x = double(x1);

[M,N] = size(x);
const = sqrt(2/N);
for u = 0:1:N-1;
    for v = 0:1:N-1;
        if u == 0
            c(u + 1,v + 1) = 1/sqrt(N);
            c = c(u + 1,v + 1);
        else
            a = 2 * v;
            c(u + 1, v + 1) = const * cos((3.14*(a + 1)*u)/(2*N));
            c = c(u + 1,v + 1);
end
end
end

final_dct = c*x*c';

figure(1);
imshow(uint8(x1));
title("Original Image");

figure(2);
imshow(uint8(final_dct));
title("Image after applying DCT");
