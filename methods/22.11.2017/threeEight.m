function result = threeEight(a, b, x, N)
    h = 1 / N;
    n = length(x);
    
    L = (x(1) * sqrt(1 + x(1)^2) +x(n) * sqrt(1 + x(n)^2));
    
    resultF = 0;
    result = 0;
    
    for i = 4 : N - 4
        result = result + (x(i + 3) * sqrt(1 + x(i + 3)^2));
    end
    
    
     for i = 2 : N - 1
        resultF = resultF + (x(i) * sqrt(1 + x(i)^2));
     end
     resultF = resultF - L - result;
    
    result = (L + 3 * resultF + 2 * result) * 3 / 8 * (b - a) / N - h;
end