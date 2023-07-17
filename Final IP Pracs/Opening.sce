img = imread("C:\Program Files\scilab-6.1.1\IPCV\images\Cameraman.jpeg");
se1 = imcreatese('rect',3,3);
im2 = imerode(img,se1);
im3 = imdilate(im2,se1);

subplot(1,2,1);
imshow(img);
title("Original Image");

subplot(1,2,2);
imshow(im3);
title("Opening Image");
