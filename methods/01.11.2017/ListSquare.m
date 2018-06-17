function [a, b]= ListSquare(x, y)
    n = length(x); 
    X = zeros(1, n);
    Y = zeros(1, n);
    
    for i = 1: n
        X(i) = log(x(i));
        Y(i) = log(y(i));
    end
    Z =minQuadr(X, Y);
    b = Z(2);
    a = exp(Z(1));
end