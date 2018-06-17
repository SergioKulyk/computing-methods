function result = Quadr(x)
    result = 0;
    n = length(x);
    for i = 1 : n-1
        result = result +  f(x(i)) / 2;
    end
    result = result * 0.03;
end