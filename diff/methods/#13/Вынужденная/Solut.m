function y=solut;
global n a b c d

z=b(1);
for i=1:n-1
    p(i)=c(i)/z;
    q(i)=-d(i)/z;
    z=b(i+1)-a(i+1)*p(i);
    d(i+1)=d(i+1)-a(i+1)*q(i);
end;

y(n)=-d(n)/z;

for i=n-1:-1:1
    y(i)=p(i)*y(i+1)+q(i);
end