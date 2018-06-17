function Print_solution(t,y_new);
 
Include_global;

step=step+1;
y_global(step,:)=y_new;
time_global(step)=t;
end  