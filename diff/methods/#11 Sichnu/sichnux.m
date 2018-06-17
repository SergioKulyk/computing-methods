function x = sichnux(y,xs,xt,e)
% y - строка с функцией
% xs - првое приближение
% xt - второе приближение
% e - погрешность

clear all, clc
 
% вводим ф-цию
% она должна быть строкой (в кавычках)

% рисуем побыстрому
ezplot(y), grid on, hold on
 
% находим корень
x0 = sichnux(y,-5,0)
% отображаем на графике
plot(x0,0,'or')

if nargin < 4 % если точность не указана
    e = 0.001; % значение по умолчанию
end
%Функция
f=fun(y);
%Вторая производная функции
f2=deff(y);
 
funx=f(xs);
fun=f(xt);
 
u=2*e;
n = 0;
while u>=e
    xn = xs-(funx*(xs-xt))/(funx-fun);
    fun = funx;
    funx = f(xn);
    u = abs(xn-xs);
    xt = xs;
    xs = xn;
    n = n+1;
    if n > 50000 % если сильно задумался
        disp('Решение не найдено!')
        x = [];
        return
    end
end;
x = xs;

end

function res = fun(x)
    res = tan(x);
end

function res = deff(x)
    res = tan(x);
end
