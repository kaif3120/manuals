I = imread("C:\Users\Shivam Mishra\Downloads\pokemon.jpg");
figure(1);
imshow(I);
title("Original Image");
H = fspecial('laplacian',0.2);
lap = imfilter(I,H,"replicate");
figure(2);
imshow(lap);
title("Image after Laplacian Filter");
