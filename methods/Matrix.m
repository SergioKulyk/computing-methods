function [zeroCount, multiply] = Matrix(A)
    zeroCount = 0;
    multiply = 1;
    for i = 1: 1 :length(A)
        for j = 1: 1 :length(A(1,:))
            if A(i,j) == 0
                zeroCount = zeroCount + 1;
            else
                multiply = multiply * A(i,j);
            end
        end
    end
end

