clc;
disp(" Convolution")
x = [4,5,6;7,8,9];
h = [1;1;1];
y = conv2(x,h);
disp(y);
disp("Convolution")
a = [1,2,3;4,5,6;7,8,9];
b = [1,1;1,1;1,1];
c = convol2d(a,b);
disp(c);
disp("Correlation")
x =[1,2,3;4,5,6;7,8,9];
h = [1,1;1,1;1,1];
y = corr2(x,h);
disp(y);
