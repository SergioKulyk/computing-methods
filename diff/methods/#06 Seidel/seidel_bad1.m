function x=Seidel_bad1(a,b,c,d,x,n,max_step)
% ������� ���� a(i)*x(i-1)-b(i)*x(i)+c(i)*x(i+1)=d(i)  a(1)=c(n)=0
% ����� ����
% ��� �������� ����������, ������� ��� ��������� �������
% ���� ������ ���m��� �������� max_step
% ������������ ���������� �����. ������ ��� ����������
% �� ��� ����� �������� �� �����, ��� �� ������  a(1)=c(n)=0
% � ����� ��� i=1 ������������ x(0) ��� �����������
% ���������� ������������� x(n+1)

% �������, ��� ��������� ������� ������ ��� ��������. � ��� ���������.
% �������� ������� ����� ����������� �������

for step=1:max_step 
    for i=1:n
        x(i)=(a(i)*x(i-1)+c(i)*x(i+1)-d(i))/b(i);
    end
end
end