 function Print_solution(t,y);

  global n_equ h_start step A y_global t_global

  step=step+1;
  for i=1:n_equ
     y_global(step,i)=y(i);
  end   
  t_global(step)=t;
 end
  