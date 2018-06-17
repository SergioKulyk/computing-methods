function task_516()
     y(1) = 0;
     x(1) = 0;
     
     uy(1) = 1;
     ux(1) = 1;
     
     h = 0.1;
     t(1) = 0.01;
     i = 1;   
     
     while t(i) < 15
         y(i+1) = uy(i) * h + y(i);
         x(i+1) = ux(i) * h + x(i);
         
         uy(i+1) = (-2 * uy(i) - 10 * y(i)) * h + uy(i);
         ux(i+1) = ux(i);
         
         t(i+1) = t(i) + h;
         i = i + 1;
     
     end
     
    plot(x,y)
    grid on
    hold on
end

