clc;
clear all;
p = imread('C:\Users\Shivam Mishra\Downloads\pokemon.jpg');
z = double(p);
[row col] = size(p);
for i = 1:1:row
for j = 1:1:col
if (z(i,j) > 50) && (z(i,j) <150)
 z(i,j) = 255;
else
 z(i,j) = p(i,j);
end
end
end
