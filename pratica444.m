clear all
close all

im=imread('milho.png');

s=imhist(im);

figure('name','sas');
subplot(1,3,1);
imshow(im);

subplot(1,3,2);
imshow(s);


for i = 1:size(im,1)
    for j = 1:size(im,2)
       if((im(i,j,1)>=16) && (im(i,j,2)<200) && (im(i,j,3)>=16 ))
          im(i,j,:)=im(i,j,2)-255;
       endif
    end
end

subplot(1,3,3);
imshow(im);







