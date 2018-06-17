function Mesh;

Include_Global;

if mod(n,2) == 1
    n=n+1;
end    
n05=n/2;

if mod(n05,2)==1
    n05=n05+1;
    n=2*n05;
end;

y_max=1;
y05_max=y_max/2;
y_mid=0.12;
%y_mid=0.25;

alfa=(y05_max/y_mid-1)^(2/n05);
if alfa ~= 1
   q=(alfa-1)/(alfa^n05-1);
else
   q=1/n05;
end
h(1)=y05_max*q;
h(1)=1;
alfa=1;
for i=2:n05
 h(i)=h(i-1)*alfa;
end
h(n05+1)=h(n05);

for i=n05+1:n-1
 h(i+1)=h(i)/alfa;
end
for i=2:n
 hs(i)=(h(i)+h(i-1))/2;
end

hs(1)=h(1);
hs(n+1)=h(n);

y(1)=0;
for i=2:n+1
  y(i)=y(i-1)+h(i-1);
end

ys(1)=-0.5*hs(1);
ys(2)=0.5*hs(1); 
for i=2:n
  ys(i+1)=ys(i)+hs(i);
end
ys(n+2)=ys(n+1)+hs(n+1);
end
