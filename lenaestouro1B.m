clear all
close all

im = imread('lena.png');

subplot(1,4,1)
imshow(im);
title('orig');

[altura, largura, canais] = size(im);
fprintf('Tamanho da imagem:'+altura+largura);
im2=im;

for(i=1:altura)
  for(j=1:largura)
    im2(i,j) = im2(i,j)+80;
  end
end

subplot(1,4,2)
imshow(im2);
title('storo');


for(i=1:altura)
  for(j=1:largura)
    im2(i,j) = im2(i,j)-80;
  end
end
subplot(1,4,3)
imshow(im2);
title('reversão');



for(i=1:altura)
  for(j=1:largura)
    im3(i,j) = im(i,j)-80;
  end
end
subplot(1,4,4)
imshow(im3);
title('-80 original');




