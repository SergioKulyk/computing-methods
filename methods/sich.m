function [x2, count] =sich(x1)
    x2 = 1.001 * x1;
    f1 = f(x1);
    eps = 10^(-6);
    count = 1;
    
    while abs(x2 - x1) > eps
        x0 = x1;
        x1 = x2;
        
        f0 = f1;
        f1 = f(x1);
        
        x2 = x1 - f1 * (x1 - x0) / (f1 - f0);
        count = count + 1;
    end
end

function result = f(x)
    result = x^2 - 4;
end

