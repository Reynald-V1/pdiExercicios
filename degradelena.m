clear all;
close all;

% Ler a imagem "lena.jpg"
im = imread('lena.png');

% Criar uma cópia da imagem para o degradê
imDegrade = imread('lena.png');

valor = -256; %metade da quantidade de colunas da matriz
for i=1:size(im)
  imDegrade(:,i) = imDegrade(:,i)+(valor); %atribui a todas as linhas da matriz (:), em cada coluna i, o valor de (i-1)
  valor = valor + 1;
end
imshow(imDegrade);
