clc; clear all;
Img=imread('C:\Users\Shivam Mishra\Downloads\pokemon.jpg');
subplot (2,2,1),imshow(Img),title('Og image 512*512'); 
Samp=zeros(256);
for i=1:1:512 
    for j=1:1:512
        if modulo(i,2)==0 m=i/2;
            if modulo(j,2)==0 n=j/2;
                Samp(i-m,j-n)=Img(i,j); 
            else
                n=0;
            end 
        else
            m=0;
        end
    end
end 
SampImg256=mat2gray(Samp);
subplot(2,2,2),imshow(SampImg256),title('Sampled.Img512*512');
Samp=zeros(128)
for i=1:1:512
    for j=1:1:512
        if modulo(i,4)==0 m=i/4*3;
            if modulo(j,4)==0 n=j/4*3;
                Samp(i-m,j-n)=Img(i,j); 
            else
                n=0;
            end
        else
            m=0;
        end
    end
end
SampImg128=mat2gray(Samp); 
subplot(2,2,3),imshow(SampImg128),title('Sampled.Img 128*128') 
Samp=zeros(64)
for i=1:1:512 
    for j=1:1:512
        if modulo(i,8)==0 m=i/8*7;
            if modulo(j,8)==0 n=j/8*7;
                Samp(i-m,j-n)=Img(i,j); 
            else
                n=0;
            end
        else
            m=0;
        end
    end
end
SampImg64=mat2gray(Samp);
subplot(2,2,4), imshow(SampImg128), title('Sampled Image 64 x 64');
Samp = zeros(32);
for i=1:1:512
    for j = 1 : 1 : 512
        if modulo(i,16)==0 m= i/16*4;
            if modulo(j,16)==0 n=j/16*4;
                Samp(i-m,j-n) = Img(i,j);
            else
                n=0;
            end
        else
            m=0;
        end 
    end
end
