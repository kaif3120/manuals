clc;
clear;
B = imread("C:\Users\Shivam Mishra\Downloads\pokemon.jpg");
[r,c] = size(double(B));
for i =1:r
for j =1:c
MSB(i,j) = bitand(B(i,j), bin2dec('10000000'));
LSB(i,j) = bitand(B(i,j), bin2dec('00000001'));
Second(i,j) = bitand(B(i,j), bin2dec('01000000'));
Third(i,j) = bitand(B(i,j), bin2dec('00100000'));
Fourth(i,j) = bitand(B(i,j), bin2dec('00010000'));
Fifth(i,j) = bitand(B(i,j), bin2dec('00001000'));
Sixth(i,j) = bitand(B(i,j), bin2dec('00000100'));
Seventh(i,j) = bitand(B(i,j), bin2dec('00000010'));
end
end
subplot(4,4,1);
imshow(MSB);
title("Bit Plane 7");
subplot(4,4,2);
imshow(Second);
title("Bit Plane 6");
subplot(4,4,3);
imshow(Third);
title("Bit Plane 5");
subplot(4,4,4);
imshow(Fourth);
title("Bit Plane 4");
subplot(4,4,5);
imshow(Fifth);
title("Bit Plane 3");
subplot(4,4,6);
imshow(Sixth);
title("Bit Plane 2");
subplot(4,4,7);
imshow(Seventh);
title("Bit Plane 1");
subplot(4,4,8);
imshow(LSB);
title("Bit Plane 0");
subplot(4,4,9);
imshow(B);
title("Original Image");
