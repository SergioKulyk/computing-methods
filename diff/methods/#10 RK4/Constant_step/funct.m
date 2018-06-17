 function k=funct(t,y);

 %   y[1] - x      k[1] - x'
 %   y[2] - y      k[2] - y'
 %   y[3] - x'     k[3] - x''
 %   y[4] - y'     k[4] - y''
 
 A=1.5;

 r_luna3=(y(1)^2+y(2)^2)^1.5;

 k(1)=y(3);
 k(2)=y(4);
 k(3)=-A*y(1)/r_luna3;
 k(4)=-A*y(2)/r_luna3; 
 end   