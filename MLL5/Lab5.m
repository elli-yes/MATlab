clear all
clc
% 1 �������� �����������
m = imread('pic/pic.png');

%2 ���������� ����
noise = imnoise(m, 'gaussian');

%3 �����������
nice = rgb2gray(noise);
noise_hist = figure('Name','gist');
hold on;
bar(nice);
hold off;
saveas(noise_hist, 'noise_hist.png');

%4 ���������� �����������
pr = imread('pic/pr.png');
centralfigure = pr.*noise;
imwrite(centralfigure, '4.png');

%5 ��������������� �����������
smcentralfigure = imresize(centralfigure, 0.5, 'nearest');
imwrite(smcentralfigure, '5sm.png');
lgcentralfigure = imresize(centralfigure, 2);
imwrite(lgcentralfigure, '5lg.png');

%6 ������������� ����� ����������� � ����� � ������� ������� 2 � 3
noise2 = imnoise(noise, 'gaussian');
treug = imread('pic/treug.png');
ccl = imread('pic/ccl.png');
noise2 = noise2.*treug.*ccl.*pr;
imwrite(noise2, '6.png');
%7 ����������� ��������� �� �����������.
imwrite(flip(noise2,2), '7.png');
%8 ����������� ��������� �� ���������
imwrite(flip(noise2), '8.png');
%9 ����������� �� ������� ������� �� 45�.
imwrite(imrotate(noise2, 315), '9.png');
%10 ����������� ������ ������� ������� �� 45�.
imwrite(imrotate(noise2, 45), '10.png');
%11 ������� �� ����� ��������������� ���������� ��\Labs\Lab2\Fon� ����� �� ������������ ����������� ����.
fon = imread('pic/fon.png');
%12 �������� �� ����������� ���� ����� ������� �������� 800x800 ��������.
imwrite(imcrop(fon, [0 0 800 800]), '12.png');
%13 ��������� ������� ����������� ���� � 4 ����.
imwrite(imcrop(fon, [0 0 800 800])*0.25, '13.png');
%14 ������������ ����� ����������� ����������� �� ����������� ���� � ����������� ��������, 2-� �������� � �������� �� ����������� ��� � ������������ � ��������� ��������������� �������.
im = imcrop(fon, [0 0 800 800])*0.25;
im = treug.*im;
im = im.*ccl;
im = rgb2gray(im);
im = imnoise(im, 'gaussian');
imwrite(im, '14.png');
%15 ��������� �������� �������� ��� ���������������� �����������
imN = im2double(im);
for i = 1:size(imN,1)
for j = 1:size(imN,2)
imN(i,j) = 1-(imN(i,j));
end
end
%imN = rgb2gray(im2double(im));
imwrite(imN, '15.png');
%16 ������������ ����� ����������� ����������� �� ����������� ���� � ����������� ��������, ������ ������� � �������� �� ����������� ���
im = imcrop(fon, [0 0 800 800])*0.7;
im = im.*pr;
im2 = imnoise(im, 'gaussian');
im3 = rgb2gray(im2);
imwrite(im3, '16.png');
%17 ��������� �������� �������� ���� �����������, ���������� � ��. 14 � 16.
imwrite(im-im2, '17.png');



















