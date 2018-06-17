function [x1, k] = iteration( x0, eps )
       x1 = phi(x0);
       k = 1;
       while abs(x1 - x0) > eps
            x0 = x1;
            x1 = phi(x0);
            k = k + 1;
       end
end

function result = phi(x)
    result = (0.1*x^2 - 0.4 * x + 1.5) ^ (1/3);
end
