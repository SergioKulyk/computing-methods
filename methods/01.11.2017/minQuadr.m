function  a = minQuadr(x, y)
    n = length(x);
    c(1,1) = n;
    c(1,2) = 0;
    c(2,1) = 0;
    c(2,2) = 0;
    
    b(1) = 0;
    b(2) = 0;

    for i = 1 : n
        c(1,2) = c(1,2) + x(i);
        c(2,2) = c(2,2) + x(i) ^2;
        b(1) = b(1) + y(i);
        b(2) = b(2) + x(i) * y(i);
    end
    c(2,1) = c(1,2);
    a = c^(-1)* b';
end