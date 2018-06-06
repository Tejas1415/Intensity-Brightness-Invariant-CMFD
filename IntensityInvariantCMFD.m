% Coded by Tejas K
% Capstone Project - 6th publication.
% Intensity/Brightness Invariant Copy Move Forgery Detection.

% The code could be further improved by making it more dynamic and reducing number of forloops.
%  ### This is the most premitive method of doing the objective, which gives High accuracy but less robustness. 
% Another effective method is proposed for the same objective using DCT to extractfeatures. 
% This is more robust but yeilds results with lesser accuracy than the proposed algorithm.
% (DCT code is uploaded in a disparate repository). Check it out here:
% https://github.com/Tejas1415/Discreet-Cosine-Transform-DCT-Singular-Value-Decomposition-SVD-based-Copy-Move-Forgery-Detection



% Clear the environment.
clc
clear all
close all

% Read the image
i1=imread('Lenna.png'); 
i2=rgb2gray(i1);
i2=imresize(i2, [64 64]);
figure, imshow(i2); title('i2');

% Manually crop a part of the image, add intensity to it, paste it in another location of the same image. 
i3=i2(15:30,15:30);
i4=i3+70;
i2(45:60, 45:60)= i4;
figure,imshow(i2);title('intensity-varied i2 image');
[row, col]= size(i2);
%i2=im2double(i2);

% Now let us test the results over the formed, intensity varied copy move forged image.
counti=0;countj=0;S=zeros(1,2);add2=zeros(size(S));   
Blocks2 = cell(row/8,col/8);
for i=1:row-7
    counti = counti + 1;
   countj = 0;
    for j=1:col-7
        
        countj = countj + 1;
        Blocks2{counti,countj} = i2(i:i+7,j:j+7);    % Dividing the given image into 8x8 overlapping blocks (cells)
    end                                              % Blocks2{10,42} will give us the 8x8 block starting from (10,42)
end


output=zeros(64,64);                      
for i= 1:57
    for j=1:57
         A2=Blocks2{i,j};
        [row1, col1]= size(A2);                       % Subtract each block with every other block.  
        for k=i+1:57                                  % Read the paper to know why this is being done.
            for L=j+1:57 
                A3= Blocks2{k,L};
                            Z= A3-A2;
                            Z(A3 == 255)= max(Z(:));
                            if all(Z > 0)
                            if all(Z == Z(1))
                                i                            % just printing the (x,y) locations of the starting locations of copied and duplicated regions.
                                j 
                                k 
                                L
                                output(i:i+7,j:j+7)=1;        % if condition matched, take a pure black image and mark the copied and the duplicated region loactions there.
                                output(k:k+7,L:L+7)=1;
                            end
                            end
            end
                    end
                end
            end
       figure,imshow(output);title('output');                    % Print the output
       
       
      
