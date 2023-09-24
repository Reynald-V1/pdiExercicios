clear all
close all

im = imread('C:/Users/ARTHUR/Desktop/pdi/circulo.png');

figure('Name', 'sos');
imshow(im);


im2 = uint8(im);


for(i=1:size(im,1))
  for(j=1:size(im,2))
    if(im(i,j)==1)
      im2(i,j)=126
    end
  end
end

figure('Name','s');
imshow(im2);
