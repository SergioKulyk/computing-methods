function yFind = InterpSpl(x, y, xFind)
    n = length(x) - 1;
    
    for i = 1 : n
        h(i) = x(i+1) - x(i);
    end
    
    for i = 2 : n
        aa(i - 1) = h(i-1);
        bb(i - 1) = 2 * (h(i-1) + h(i));
        cc(i - 1) = h(i);
        dd(i - 1) = 3 * (y(i+1) - y(i)) / h(i) - 3*(y(i) - y(i-1)) / h(i-1);
    end
    
    a(i) = 0;
    c(n) = 0;
    tmp = Prohonku(aa, -bb, cc, dd);
    
    for i = 2: n
        c(i) = tmp(i - 1);
    end
    
    c(1) = 0;
    c(n + 1) = 0;
    
    for i = 1 : n
        a(i) = y(i);
        b(i) = (y(i+1) - y(i)) / h(i) - h(i) / 3 * (2 *c(i) + c(i + 1));
        d(i) = (c(i + 1) - c(i)) / (3 * h(i));
    end
    
   
    for i = 1 : n
        if (xFind >= x(i)) && (xFind <= x(i+1))
            z = xFind - x(i);
            yFind = a(i) + b(i)*z + c(i)*z^2 + d(i)*z^3;
        end
    end
end