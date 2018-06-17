function [x1, count] = Newton(x0, e)
    x1 = x0 - fX(x0) / fY(x0);
    count = 1;
    while abs(x1- x0) > e
        x0 = x1;
        x1 = x0 - fX(x0) / fY(x0);
        count = count  + 1;
    end
end

function result = fX(x)
    result =  x^3 -0.1*x^2 + 0.4 * x - 1.5;
end

function result = fY(x)
    result = 3 * x^2 - 0.2*x + 0.4;
end


