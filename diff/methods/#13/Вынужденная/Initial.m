function initial;
global f v T h hs x n a b c d Pr

x_max=7;
x_mid=1;
n=155;
Pr=0.72;

alfa=((x_max-x_mid)/x_mid)^(2/(n+1));
if alfa ~= 1 
     q=(alfa-1)/(alfa^(n+1)-1);
else q=1/(n+1);
end
h(1)=x_max*q;
for i=1:n
    h(i+1)=h(i)*alfa;
    hs(i)=(h(i)+h(i+1))/2;
end;

x(1)=h(1);
for i=2:n
    x(i)=x(i-1)+h(i-1);
end;

f=zeros(1,n);
v=zeros(1,n+1);
T=zeros(1,n);