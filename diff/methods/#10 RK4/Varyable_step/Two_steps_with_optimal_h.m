function [h_new,y1h1,y1h2]= ... 
       Two_steps_with_optimal_h(h_tmp,t,y_in)

Include_global;

bad_step=true;

while (bad_step)
  
    y1h1=One_step_of_RK4(h_tmp,t,y_in);
    y1h2=One_step_of_RK4(h_tmp,t+h_tmp,y1h1);

    y2h =One_step_of_RK4(2*h_tmp,t,y_in);

    max_sol=max(abs(y1h2));
    abs_err=max(abs(y1h2-y2h));

    rel_err=abs_err/(max_sol+1.0e-10)/(2^order_of_method-1); 

    real_factor=init_factor*(epsilon/rel_err)^(1/(order_of_method+1));
    real_factor=min(max_factor,real_factor);
    real_factor=max(min_factor,real_factor); 

    if (rel_err < epsilon)
          bad_step=false;
    else 
          bad_step=true;
    end
    h_tmp=h_tmp*real_factor;
%     fprintf('err=%12.3e    eps=%12.3e   h=%12.3e  f=%12.3e\n', ...
%         rel_err,epsilon,h_tmp,real_factor);
end  
h_new=h_tmp;

end  