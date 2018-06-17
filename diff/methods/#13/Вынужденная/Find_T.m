function Find_T;
global f v T h hs x n a b c d Pr
for i=1:n 
    v_temp=0.5*(v(i)+v(i+1));
    abs_v=abs(v_temp);
    v_plus=0.5*(v_temp+abs_v);
    v_minus=0.5*(v_temp-abs_v);
    a(i)=1/Pr/ h(i) /hs(i)+v_plus/h(i);
    c(i)=1/Pr/h(i+1)/hs(i)-v_minus/h(i+1);
    b(i)=a(i)+c(i);
    d(i)=0;
end;

c(n)=0;
d(1)=d(1)-a(1);
a(1)=0;

T=solut;