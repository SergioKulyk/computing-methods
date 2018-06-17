function result = LMethod(x, h)
    n = length(x);
    result = 0;
   
    for i = 1 : n - 1
        result = result + f(x(i));
    end
    result = result * h;
end