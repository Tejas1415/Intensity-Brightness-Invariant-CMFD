clc
clear all
close all

i1=imread('Lenna.png'); 
i2=rgb2gray(i1);
i2=imresize(i2, [64 64]);
figure, imshow(i2); title('i2');

i3=i2(15:30,15:30);
i4=i3+70;
i2(45:60, 45:60)= i4;
figure,imshow(i2);title('intensity-varied i2 image');
[row, col]= size(i2);
%i2=im2double(i2);

counti=0;countj=0;S=zeros(1,2);add2=zeros(size(S));
Blocks2 = cell(row/8,col/8);
for i=1:row-7
    counti = counti + 1;
   countj = 0;
    for j=1:col-7
        
        countj = countj + 1;
        Blocks2{counti,countj} = i2(i:i+7,j:j+7);
    end
end


output=zeros(64,64);
for i= 1:57
    for j=1:57
         A2=Blocks2{i,j};
        [row1, col1]= size(A2);
        for k=i+1:57
            for L=j+1:57 
                A3= Blocks2{k,L};
                            Z= A3-A2;
                            Z(A3 == 255)= max(Z(:));
                            if all(Z > 0)
                            if all(Z == Z(1))
                                i 
                                j 
                                k 
                                L
                                output(i:i+7,j:j+7)=1;
                                output(k:k+7,L:L+7)=1;
                            end
                            end
            end
                    end
                end
            end
       figure,imshow(output);title('output');
