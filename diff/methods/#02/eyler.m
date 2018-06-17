function eyler()
    % show how the projectile is flying 
    % if we shoot out it 
    
     % speed
     U = 100; 
     % angle of push
     alpha = pi / 4;
     % free fall
     g = 9.8;
     % step
     h = 0.1;
     
     % calc new values
     ux(1) = U * cos(alpha);
     uy(1) = U * sin(alpha);
     
     x(1) = 0;
     y(1) = 0;
     time(1) = 0;
     
     i = 1;   
     while y(i) >= 0
         % next x y
         x(i + 1) = x(i) +ux(i)*h;
         y(i + 1) = y(i) + uy(i)*h;
        % nex step
         uy(i+1) = uy(i) - g*h;
         ux(i+1) = ux(i);
         % time in some point
         time(i+1) = time(i) + h;
         
         i = i + 1;
     end
   
    plot(x,y);
    grid on;
end