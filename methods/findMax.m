function p = findMax(a, k)
    [n, ~] = size(a);
    max = a(k, k);
    p = k;
    for i = k + 1 : n
        if abs(a(i, k)) > max
            max = abs(a(i, k));
             p = i;
        end
    end
end