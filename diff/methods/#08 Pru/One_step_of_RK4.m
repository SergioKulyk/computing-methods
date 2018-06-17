  function y_out=One_step_of_RK4(h,t_in,y_in)
  global n_equ
    
    k1=funct(t_in,y_in);
  
%     for i=1:n_equ
%        y_temp(i)=y_in(i)+h/2*k1(i);
%     end   
%     k2=funct(t_in+h/2,y_temp);
    k2=funct(t_in+h/2,y_in+h/2*k1);
    
%     for i=1:n_equ
%      y_temp(i)=y_in(i)+h/2*k2(i);
%     end
%     k3=funct(t_in+h/2,y_temp);
    k3=funct(t_in+h/2,y_in+h/2*k2);
    
%     for i=1:n_equ
%      y_temp(i)=y_in(i)+h*k3(i);
%     end 
%     k4=funct(t_in+h,y_temp);
    k4=funct(t_in+h/2,y_in+h*k3);    
    
%     for i=1:n_equ
%      y_out(i)=y_in(i)+h/6*(k1(i)+2*k2(i)+2*k3(i)+k4(i));
%     end 
    y_out=y_in+h/6*(k1+2*k2+2*k3+k4);
  end    
    