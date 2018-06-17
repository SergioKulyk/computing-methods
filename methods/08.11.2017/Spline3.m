function  y_find = Spline3 (x, y, x_find)
    n = length(x_find);
    for i = 1 : n
        y_find(i) = InterpSpl(x, y, x_find(i));
    end
end