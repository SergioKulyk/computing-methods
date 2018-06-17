function x=Seidel(initial_cond, a, b, c, d, n, max_iter, eps);

% ������������ �����������

x=initial_cond;
err=100;
iter=0;
  
while (iter < max_iter) & (err > eps)

  iter=iter+1;
  err=0;  % ����� ����� ������������ ������
  tmp_x = (a(1)*x(1) + c(1)*x(2) -(d(1) - 2/x(1)))/(b(1) + 1/x(1)^2);
  deviation=abs((x(1)-tmp_x)/(abs(tmp_x)+1.0e-20));
  % ������������ ������������� ������. 
  % 1.0�-20 - ��������� �� ������� �� 0
  if deviation > err err=deviation; end
  % ����� ����� ��������  
  % err=abs((x(i,j)-tmp_x)/(abs(tmp_x)+1.0e-20));
  % � �� �������� err=0;
  x(1)=tmp_x;
  for i=2:n-1
      tmp_x = (a(i)*x(i-1)+c(i)*x(i+1)-(d(i) - 2/x(i)))/(b(i) + 1/x(i)^2);
      %tmp_x= x(i) + q *((a(i)*x(i-1)+c(i)*x(i+1)-d(i))/b(i) - x(i));
      %(1-q) * x(i) + q((a(i)*x(i-1)+c(i)*x(i+1)-d(i))/b(i) - x(i))
      deviation=abs((x(i)-tmp_x)/(abs(tmp_x)+1.0e-20));
      if deviation > err 
          err=deviation; end
      x(i)=tmp_x;
  end
  tmp_x= (a(n)*x(n-1) + c(n)*x(n) -(d(n) - 2/x(n)))/(b(n) + 1/x(n)^2);
  deviation=abs((x(n)-tmp_x)/(abs(tmp_x)+1.0e-20));
  if deviation > err err=deviation; end
  x(n)=tmp_x;
end
err
% ������ ��� i=1, i=n ��������� �����������
% ���� ����� � ������ ������� ����� ������� ������ 
% �� ���� ������� - ���� �� ���c�� ����� ������� � �����
% ��������. �������� �� �������, � ������.
end