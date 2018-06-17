   clear all  
   clc
   global n_equ h t y step A y_global t_global

   Initial_conditions;
   
   for i_step=1:70000
       
    y_out=One_step_of_RK4(h,t,y);
   
    t=t+h;
    y=y_out;
    
    Print_solution(t,y);
    
   end
   plot(y_global(:,1),y_global(:,2),'r');
   hold on
   plot(y_global(:,5),y_global(:,6),'b');