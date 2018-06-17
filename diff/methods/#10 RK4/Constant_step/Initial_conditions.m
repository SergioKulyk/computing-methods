 function Initial_conditions;

 Include_global;
 
 time=0;
 h=1.0e-3;
 step=1;
 
 y(1)=1;
 y(2)=0;
 y(3)=0;
 y(4)=1;
  
 y_global(1,:)=y;
 time_global(1)=0;

 end