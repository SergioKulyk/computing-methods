 function Initial_conditions;

 Include_global;
 
 time=0;
 h=1.0e+1;
 step=1;
 epsilon=1.e-7;
 init_factor=0.7;
 min_factor = 0.2;
 max_factor = 5;
 order_of_method=4;

 y(1)=1;
 y(2)=0;
 y(3)=0;
 y(4)=1;
  
 y_global(1,:)=y;
 time_global(1)=0;

 end