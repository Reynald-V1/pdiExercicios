clear all
close all


im = zeros(256,256,'uint8');
size(im)

figure('Name', 'inicio');
imshow(im)

for i = 1 : size(im, 1)%linhas
  for j = 1 : size(im, 2)%colunas
    if(i > 8 && i <= 24) || (i > 232 && i <= 248) || (j > 8 && j <= 24) || (j > 232 && j <= 248)
      im(i,j) = 127;
    end
  end
end

figure('Name', 'fim');
imshow(im);
