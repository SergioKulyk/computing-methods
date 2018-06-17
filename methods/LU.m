function x = LU(A, B)
    n = length(B);
    for k = 1 : n
        L(k, k) = 1;
        for j = k : n
            S = 0;
            for t = 1 : k-1
                S = S + L(k, t) * U(t, j);
            end
            U(k, j) = A(k, j) - S;
        end

        for i = k+1 : n
            S = 0;
            for t = 1 : k-1
                S = S + L(i, t) * U(t, k);
            end
            L(i, k) = (A(i, k) - S) / U(k, k);
        end
    end

    Y(1) = B(1);
    
    for i = 2 : n
        S = 0;
        for j = 1 : i-1
            S = S + L(i, j) * Y(j);
        end
        
        Y(i) = B(i) - S;
    end

    x(n) = Y(n) / U(n, n);
    
    for i = n-1 : -1 : 1
        S = 0;
        for j = i+1 : n
            S = S + U(i, j) * x(j);
        end
        x(i) = (Y(i) - S) / U(i, i);
end
