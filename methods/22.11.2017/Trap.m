function result = Trap(a, b, h)
    x = a : h : b;
    tmp = f(x(1)) + f(x(h));
    result = 0;

    for i = 2 : h -1
        result = result + f(x(i));
    end
    result = (tmp + 2 * result) * h / 2;
end