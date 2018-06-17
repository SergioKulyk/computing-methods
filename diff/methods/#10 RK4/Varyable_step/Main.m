clc
clear all  

Include_global;

Initial_conditions;

for step=1:6000
        
    [h,y1,y2]=Two_steps_with_optimal_h(h,time,y);
  
    Print_solution(time+h,y1);
    h_global(step)=h;
    
    Print_solution(time+2*h,y2);
    h_global(step)=h;
    
    time=time+2*h;
    y=y2;
   
end
plot(y_global(:,1),y_global(:,2),'r');
figure
plot(h_global); 