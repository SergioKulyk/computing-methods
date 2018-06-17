function result = Trapezoid(a, b, h)
    n = (b - a) / h;
    x = a : h : b;
    tmp = fun(x(1)) + fun(x(n));
    result = 0;

    for i = 2 : n-1
        result = result + fun(x(i));
    end
    result = (tmp + 2 * result) * h / 2;
end