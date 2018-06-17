function [x1, k] = iterator(x0, eps)
    x1 = newX(x0);
    k = 1;
    while MyNorm(x1 - x0) >= eps && k < 100
        x0 = x1;
        x1 = newX(x0);
        k = k + 1;
    end
end

function x = newX(x0)
    x(1) = (sin(x0(2)) + 1) / 2 ;
    x(2) = 1.5 - cos(x0(1));
end