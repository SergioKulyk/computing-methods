clc   
clear all   

Include_global

Initial_conditions;
   
for step=1:5000
  y_out=One_step_of_RK4(h,time,y);
   
  time=time+h;
  y=y_out;
    
  Print_solution(time,y);
end
plot(y_global(:,1),y_global(:,2),'r');