function task_514()
     y(1) = 0;
     x(1) = 0;
     
     uy(1) = 1;
     ux(1) = 1;
     
     h = 0.1;
     t(1) = 0.01;
     i = 1;   
     
     while t(i) < 2
         y(i+1) = uy(i) * h + y(i);
         x(i+1) = ux(i) * h + x(i);
         
         uy(i+1) = (5 * uy(i) - 2 * y(i)) * h / 2 + uy(i);
         ux(i+1) = ux(i);
         
         t(i+1) = t(i) + h;
         i = i + 1;
     
     end
     
    plot(x,y)
    grid on
    hold on
end

