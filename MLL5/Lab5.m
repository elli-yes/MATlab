clear all
clc
% 1 создание изображения
m = imread('pic/pic.png');

%2 добавление шума
noise = imnoise(m, 'gaussian');

%3 гистограмма
nice = rgb2gray(noise);
noise_hist = figure('Name','gist');
hold on;
bar(nice);
hold off;
saveas(noise_hist, 'noise_hist.png');

%4 синтезация изображения
pr = imread('pic/pr.png');
centralfigure = pr.*noise;
imwrite(centralfigure, '4.png');

%5 масштабирование изображения
smcentralfigure = imresize(centralfigure, 0.5, 'nearest');
imwrite(smcentralfigure, '5sm.png');
lgcentralfigure = imresize(centralfigure, 2);
imwrite(lgcentralfigure, '5lg.png');

%6 Синтезировать новое изображение с шумом и нанести объекты 2 и 3
noise2 = imnoise(noise, 'gaussian');
treug = imread('pic/treug.png');
ccl = imread('pic/ccl.png');
noise2 = noise2.*treug.*ccl.*pr;
imwrite(noise2, '6.png');
%7 зеркального отражения по горизонтали.
imwrite(flip(noise2,2), '7.png');
%8 зеркального отражения по вертикали
imwrite(flip(noise2), '8.png');
%9 изображения по часовой стрелке на 45°.
imwrite(imrotate(noise2, 315), '9.png');
%10 изображения против часовой стрелки на 45°.
imwrite(imrotate(noise2, 45), '10.png');
%11 Выбрать из папки вспомогательных материалов «…\Labs\Lab2\Fon» любое из предложенных изображений фона.
fon = imread('pic/fon.png');
%12 Вырезать из изображения фона любой участок размером 800x800 пикселей.
imwrite(imcrop(fon, [0 0 800 800]), '12.png');
%13 Уменьшить яркость вырезанного фона в 4 раза.
imwrite(imcrop(fon, [0 0 800 800])*0.25, '13.png');
%14 Сформировать новое полутоновое изображение из вырезанного фона с уменьшенной яркостью, 2-х объектов и добавить на изображение шум в соответствии с вариантом индивидуального задания.
im = imcrop(fon, [0 0 800 800])*0.25;
im = treug.*im;
im = im.*ccl;
im = rgb2gray(im);
im = imnoise(im, 'gaussian');
imwrite(im, '14.png');
%15 Выполнить операцию «Негатив» для синтезированного изображения
imN = im2double(im);
for i = 1:size(imN,1)
for j = 1:size(imN,2)
imN(i,j) = 1-(imN(i,j));
end
end
%imN = rgb2gray(im2double(im));
imwrite(imN, '15.png');
%16 Сформировать новое полутоновое изображение из вырезанного фона с уменьшенной яркостью, одного объекта и добавить на изображение шум
im = imcrop(fon, [0 0 800 800])*0.7;
im = im.*pr;
im2 = imnoise(im, 'gaussian');
im3 = rgb2gray(im2);
imwrite(im3, '16.png');
%17 Выполнить операцию разности двух изображений, полученных в пп. 14 и 16.
imwrite(im-im2, '17.png');



















