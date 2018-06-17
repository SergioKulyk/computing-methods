function Suma = InfinitySuma( x )
    e = 10^(-6);
    Suma = x;
    n = 3;
    while abs(Suma) < e
        Suma = Suma + x^n / n;
        n = n + 2; 
    end
end

