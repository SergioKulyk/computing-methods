function x = GayssMody(a, b) 
    n = length(b);
    for k = 1: n-1
        p = findMax(a, k); % find max element
        if p ~= k % change the lines if max != current element
            tmp = a(k, :);
            a(k, :) = a(p,:);
            a(p, :) = tmp;
            tmp = b(k);
            b(k) = b(p);
            b(p) = tmp;
        end
        for i = k + 1 : n
            tmp = a(i, k) / a(k, k);
            for j = k : n
                a(i,j) = a(i, j) - tmp * a(k, j);
            end
            b(i) =  b(i) - tmp * b(k);
        end
        %% 
    end
    
    %find 
    x(n) = b(n)/a(n,n);
    for k = n - 1: -1: 1
        s = 0;
        for j = k+1 : n
            s = s + a(k,j) * x(j);
        end
        x(k) = (b(k) - s) / a(k, k);
    end
end