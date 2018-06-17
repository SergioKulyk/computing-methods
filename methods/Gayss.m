function x = Gayss(a, b) 
    n = length(b);
    for k = 1: n-1
        for i = k + 1 : n
            tmp = a(i, k) / a(k, k);
            for j = k : n
                a(i,j) = a(i, j) - tmp * a(k, j);
            end
            b(i) =  b(i) - tmp * b(k);
        end
    end
    
    x(n) = b(n)/a(n,n);
    for k = n - 1: -1: 1
        s = 0;
        for j = k+1 : n
            s = s + a(k,j) * x(j);
        end
        x(k) = (b(k) - s) / a(k, k);
    end
end