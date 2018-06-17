function k=funct(t,y)
    global Azl Alsp Azsp
%luna
 %   y[1] - x      k[1] - x'
 %   y[2] - y      k[2] - y'
 %   y[3] - x'     k[3] - x''
 %   y[4] - y'     k[4] - y''
 
 %sputnik
 %   y[5] - x      k[5] - x'
 %   y[6] - y      k[6] - y'
 %   y[7] - x'     k[7] - x''
 %   y[8] - y'     k[8] - y''
    
    k(1)=y(3);
    k(2)=y(4);
    k(3)=-Azl*(y(1)/((y(1)^2+y(2)^2))^(3/2));
    k(4)=-Azl*(y(2)/((y(1)^2+y(2)^2))^(3/2));
 end