function [x1, count] = failPlace(x0, b, e)
        count = 1;
        x1 = x0 - f(x0) * (b - x0) / (f(b)  - f(x0));
        while abs(x1 - x0) > e
            x0 = x1;
            x1 = x0 - f(x0)* (b - x0) / (f(b)  - f(x0));
            count = count+ 1;
        end
        
end

function res = f(x)
    res =  x^3 -0.1*x^2 + 0.4 * x - 1.5;
end



