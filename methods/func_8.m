function P = func_8( x )
    P = 1;
    for n = 1:6
        P = P * (n + 3 + cos(2 * x) / (2 * n - 1));
    end
end

