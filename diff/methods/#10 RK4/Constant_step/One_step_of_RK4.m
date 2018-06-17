function y_out=One_step_of_RK4(h,t_in,y_in)
    
k1=funct(t_in,y_in);
k2=funct(t_in+h/2,y_in+h/2*k1);
k3=funct(t_in+h/2,y_in+h/2*k2);
k4=funct(t_in+h,y_in+h/2*k3);
    
y_out=y_in+h/6*(k1+2*k2+2*k3+k4);

end    