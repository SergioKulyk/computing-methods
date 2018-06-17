function ticker()
    % show how the projectile is flying 
    % if we shoot out it 
   
     % step
     k = 2;
     m = 1;
     h = 0.01;
     
     time(1) = 0;
     ux(1) = 0;
     x(1) = 5;
     
     i = 1;   
     while i < 1000
         x(i+1) = x(i) + h * ux(i);
         ux(i+1) = ux(i) - k * x(i) * h;
         time(i+1) = time(i) + 1;
         i = i + 1;
    end
    
    plot(time, x);
    hold on;
    grid on;
end
