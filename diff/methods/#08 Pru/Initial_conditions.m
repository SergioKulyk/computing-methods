function Initial_conditions
    global n_equ h t y step y_global t_global 
    
    t = 0;
    h = 0.01;
    n_equ = 4;
    step = 1;
    
    y(1) = 5;
    y(2) = 1;
    y(3) = 0;
    y(4) = 1;
  
    for i=1:n_equ
        y_global(1,i)=y(i);
    end
    t_global(1)=0;
end
