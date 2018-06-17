function result = RMethod(x, h)
    result = 0;
    n = length(x);
    for i = 2 : n 
        result = result +f(x(i));
    end
    result = result * h;
end