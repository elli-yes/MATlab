str='������ ���������� 1981 3 4 3 4 3 5'
%1
str1 = strrep(str, ' ', '');
length(str1)
%2
strnew = [str(8:17) str(7) str(1:6) str(17:34)]
%3
strnew = strrep(strnew,'1','����');

strnew = strrep(strnew,'2','���');

strnew = strrep(strnew,'3','���');

strnew = strrep(strnew,'4','������');

strnew = strrep(strnew,'5','����');

strnew = strrep(strnew,'6','�����');

strnew = strrep(strnew,'7','����');

strnew = strrep(strnew,'8','������');

strnew = strrep(strnew,'9','������');

strnew = strrep(strnew,'0','����');
%4
mas=[]
for i=1:34

    for j=0:9

    if(str2num(str(i))==j)

        mas=[mas,j];

    end

end

end
%5
str5_1 = [1 2 3 4 99 80];
str5_2 = [5 6 7 8 33 21];
str5_3 = [15 90 5];
file=fopen('in3.txt', 'wt');

fprintf(file, '%d ', str5_1);
fprintf(file, '%d ', str5_2);
fprintf(file, '%d ', str5_3);

fclose(file);
%6
file=fopen('in3.txt','rt');

mas1 = fscanf(file,'%d', [2 6])
arr1 = fscanf(file,'%d', [3])

fclose(file);
%7
h1=figure;
    hold on
        x = 1:0.1:5;
        y=sin(3*x);
        plot(x,y);
    hold off
File1NameExp='v01';
PictHigh1='200';

FileName00=[File1NameExp '_1.jpg'];
saveas(h1,FileName00);
FileHtml=fopen(['00' File1NameExp ' �����.htm'],'wt');
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>����� �� ������������ ������ \n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type"CONTENT="text/html; charset=windows">\n']);
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<center><H3>�����<br>�� ������������ ������</h3></center>\n']);
n1='';
n2='5 6 7 8 33 21';
fprintf(FileHtml,['<h3>�������� ������</h3>\n']);
fprintf(FileHtml,['<br>2 2 3 4 99 80 5 6 7 8 33 21']);
fprintf(FileHtml,['<br><br> ������� \n']);
fprintf(FileHtml,['<a href="' FileName00 '">']);
fprintf(FileHtml,['<br><img src="' FileName00 '" height="' PictHigh1 '" >' '\n']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);
