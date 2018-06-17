function y = MyNorm(x)
    n = length(x);
    y = abs (x(1));
    for i = 2: n
        if abs(x(i)) > y
            y = abs(x(i));
        end
    end
end