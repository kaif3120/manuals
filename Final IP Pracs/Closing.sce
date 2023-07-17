img = imread("C:\Users\Shivam Mishra\Downloads\pokemon.jpg");
se1 = imcreatese('rect',3,3);
im2 = imdilate(img,se1);
im3 = imerode(im2,se1);

subplot(1,2,1),
imshow(img),
title("Original Image");

subplot(1,2,2);
imshow(im3);
title("Closed Image");


