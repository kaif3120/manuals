clc;
clear;
a = imread('C:\Program Files\scilab-6.1.1\IPCV\images\coins.png');
img = imread('C:\Program Files\scilab-6.1.1\IPCV\images\coins.png');
subplot(1,2,1),imshow(a),title("Original Image");
subplot(1,2,2),imshow(img),title("Boundary Image");
BW = im2bw(img);
imshow(BW);
dim = size(BW)
col = round(dim(2)/2)-90;
row = min(find(BW(:,col)))
boundary = bwtraceboundary(BW,[row, col],'N');
imshow(img);
plot(boundary(:,2),boundary(:,1),'g','LineWidth',3);
BW_filled = imfill(BW,'holes');
boundaries = bwboundaries(BW_filled);

for k=1:10
    b = boundaries{k};
    plot(b(:,2),b(:,1),'g','LineWidth',3);
end
