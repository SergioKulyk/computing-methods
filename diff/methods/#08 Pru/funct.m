function k=funct(t,y)
    
    kof = 10;
    L = 5;
    
    h = 0.01;
    
    Lup = (y(1)^2 + (L - y(3))^2)^(0.5);
    Fup = -(Lup - L) * kof;
    
    k(1)= y(2)*h + y(1);
    k(2)= Fup * (y(1) / Lup);
    k(3)= y(4);
    k(4)= Fup * (y(3) / Lup); 
 
 end