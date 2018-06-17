function Initial_conditions
    global n_equ h t y step Azl Alsp Azsp y_global t_global

    Azl = 1.5;
    Alsp = 0.35;
    Azsp = 1.5;
    
    t=0;
    h=10^(-4);
    n_equ=8;
    step=1;

    y(1)=1;
    y(2)=0;
    y(3)=0;
    y(4)=1;
  
  for i=1:n_equ
      y_global(1,i)=y(i);
  end
  t_global(1)=0;