function [x1, k] = Newton(x0, eps)
    J = funJ(x0);
    x1 = x0 + GayssMody(J, -F(x0));
    k = 1;
    while MyNorm(x1 - x0) >= eps && k < 100
        x0 = x1;
        x1 = x0 + GayssMody(funJ(x0), -F(x0));
        k = k + 1;
    end
end

function y = F(x0)
    y(1) = cos(x0(1)) + x0(2) - 1.5;
    y(2) =  2 * x0(1) - sin(x0(2)) - 1;
end

function y = funJ(x0)
    y(1,1) = -sin(x0(1));
    y(1,2) = 1;
    y(2,1) =  2;
    y(2,2) = -cos(x0(2));
end