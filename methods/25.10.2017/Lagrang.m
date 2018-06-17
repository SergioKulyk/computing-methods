function yp = Lagrang(x, y, xp)
    n = length(x);
    yp = 0; 
    for i = 1: n
        d = 1;
        for j = 1 : n
            if i ~= j
                d = d * (xp - x(j)) / (x(i) - x(j));
            end       
        end
        yp = yp + y(i) * d;
    end
end