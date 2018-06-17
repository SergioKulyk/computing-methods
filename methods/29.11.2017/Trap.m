function I = Trap(a, b, eps) 
    h = (b - a) / 4;
    Ih = Trapezoid(a, b, h);
    Ih2 = Trapezoid(a, b, h/2);
    
    while abs((Ih2 - Ih) / 3) > eps
        Ih = Ih2;
        h = h / 2;
        Ih2 =  Trapezoid(a, b, h/2);
    end
    I = Ih2;
end