function result = Simson(x, h)
    n = length(x);
    m = n / 2;
    
    L= f(1) + f(n);
    
    resultF = 0;
    result = 0;
    
    for i = 1 : m-1
        result = result + (x(2*i) * sqrt(1 + x(2*i)^2));
    end
    
     for i = 1 : m
        resultF = resultF + (x(2*i -1) * sqrt(1 + x(2*i -1)^2));
     end
    
    result = (L + 4 * resultF + 2*result) * h / 3;
end