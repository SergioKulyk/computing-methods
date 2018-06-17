function y = func( x )
if x <= 0
    y = 1 + 2 * x^2;
elseif x > 0 && x < 0.5
    y = 1;
else
    y = 1 + (x - 0.5)^4;
end;
end

