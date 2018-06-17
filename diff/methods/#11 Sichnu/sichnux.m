function x = sichnux(y,xs,xt,e)
% y - ������ � ��������
% xs - ����� �����������
% xt - ������ �����������
% e - �����������

clear all, clc
 
% ������ �-���
% ��� ������ ���� ������� (� ��������)

% ������ ����������
ezplot(y), grid on, hold on
 
% ������� ������
x0 = sichnux(y,-5,0)
% ���������� �� �������
plot(x0,0,'or')

if nargin < 4 % ���� �������� �� �������
    e = 0.001; % �������� �� ���������
end
%�������
f=fun(y);
%������ ����������� �������
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
    if n > 50000 % ���� ������ ���������
        disp('������� �� �������!')
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
