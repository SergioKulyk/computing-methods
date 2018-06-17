function I = MonteCarlo(a, b, M) 
    % I - ��������� �������� ���������
    % a b - ��� ������������
    % M - 
    
    N = 1000; % ������� �����
    k = 0; % ����� �� ��������� �� �������
    
    for i = 1 : N
        x = a + (b - a) * rand;
        y = M * rand;
        if y <= fun(x)
             k = k+ 1;
        end
    end
    I = M * (b - a) * k / N;
end

function result = f(x)
    result = 3^x + 1 / ln(3);
end