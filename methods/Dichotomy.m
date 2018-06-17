function [c, k] = Dichotomy( a, b, e)
    c = (a + b) / 2;
     k = 1;
    while abs(b - a) >= e
        if f(a) * f(c) < 0
            b = c;
        else
            a = c;
        end
         k = k + 1;
         c = (a + b) / 2;
    end
end

function y = f(x)
    y = x^3 -0.1*x^2 + 0.4 * x - 1.5;
end

