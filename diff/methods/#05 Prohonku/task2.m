clc
clear all

n = 50;

xa = 1;
xb = 2;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = 14;
yb = 53;

for i=1:n
    a(i) = 1 / h^2  + 3 / (2*h*x(i));
    b(i) = 2 / h^2;
    c(i) = 1 / h^2  - 3 / (2*h*x(i));
    d(i) = -6 / x(i);
end

b(1) = b(1) - a(1);
d(1) = d(1) + a(1) * 14 * h;
a(1) = 0;   
d(n) = d(n) - c(n) * yb;
c(n) = 0;

y = Prohonku(a, b, c, d);

plot(x, y, 'b', x, 3 * x.^4 + 2.*x + 1, 'r*')
hold on
grid on
            