function x = Prohonku(a, b, c, d)
n = length(b);
p(1)=c(1)/b(1);
q(1)=-d(1)/b(1);
for i=2:n
    p(i)=c(i)/(b(i)-a(i)*p(i-1));
    q(i)=(a(i)*q(i-1)-d(i))/(b(i)-a(i)*p(i-1));
end
x(n)=q(n);
for i = n-1:-1:1
    x(i)=p(i)*x(i+1)+q(i);
end