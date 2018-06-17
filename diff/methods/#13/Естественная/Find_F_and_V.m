 function err=Find_F_and_V;
 global f v T h hs x n a b c d
 
 for i=1:n 
     v_temp=0.5*(v(i)+v(i+1));
     abs_v=abs(v_temp);
     v_plus=0.5*(v_temp+abs_v);
     v_minus=0.5*(v_temp-abs_v);
     a(i)=1/ h(i) /hs(i) + v_plus / h(i);
     c(i)=1/h(i+1)/hs(i) - v_minus/h(i+1);
     b(i)=a(i)+c(i)+4*f(i);
     d(i)=-T(i)-2*f(i)^2;
 end;

 a(1)=0;
 c(n)=0;
 
 f=Solut;
 
 v_temp=-h(1)*3*f(1)/8;
 err=abs(v_temp-v(1))/(abs(v_temp)+1.0e-6);
 v(1)=v_temp;

for i=1:n
    v_temp=v(i)-hs(i)*3*f(i);
    dev=abs(v_temp-v(i+1))/(abs(v_temp)+1.0e-6);
    if dev > err err=dev;
    end;
    v(i+1)=v_temp;
end;