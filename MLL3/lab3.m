   x = 0:0.1:5;
   f1 = power(x, 2).*log(x);
   f2 = sin(x)+ x;
   f3 = sin(x)+ exp(x);
   plot(x, f1, '-r', x, f2, '+g', x, f3, '.b')
   legend('x^2*lg(x)', 'sin(x) + x', 'sin(x) + e^x')
   
  figure();  
   
   x = -5:0.01:5;
for i=1:length(x)
    if x(i) <= 0
        y(i) = (1+x(i)^2) / sqrt(1+x(i)^4);
    else
        y(i) = 2*x(i) + sin(x(i))^2/(3+x(i));
    end
end
subplot(2, 1, 1)
    plot(x, y, 'r')
    legend('if-else')
    xlabel('Ox')
    ylabel('Oy')
x1 =  -5:0.01:5;
y1 = ( (1+x.^2) ./ sqrt(1+x.^4) ).*(x1 <= 0);
y2 = ( 2*x + sin(x).^2 ./ (3+x) ).*(x1 > 0);
subplot(2, 1, 2)
    plot(x1, y1+y2,'b')
    legend('Matlab+')
     xlabel('Ox')
    ylabel('Oy')
        