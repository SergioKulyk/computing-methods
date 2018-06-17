function [x, k] = ZeidelLiner(a, b, x0,exp)
    n = length(b);
    k = 1;
    for i = 1: n
        s1 = 0;
        for  j = 1 : i - 1
            s1 = s1 + a(i,j) * x(j);      
        end
        s2 = 0;
        for j = i + 1 : n
            s2 = s2 + a(i,j) * x0(j);
        end
        x(i) = (b(i) - s1 - s2)/a(i,i);
    end
    
    while MyNorm(x - x0) > exp && k <= 100
        x0 = x;
        for i = 1: n
            s1 = 0;
            for  j = 1 : i - 1
                s1 = s1 + a(i,j) * x(j);            
            end
            s2 = 0;
            for j = i + 1 : n
                s2 = s2 + a(i,j) * x0(j);
            end
            x(i) = (b(i) - s1 - s2)/a(i,i);
        end
        k = k + 1;
    end
end

function y = MyNorm(x)
    n = length(x);
    y = abs (x(1));
    for i = 1: n
        if abs(x(i)) > y
            y = abs(x(i));
        end
    end
end