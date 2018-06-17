clc
clear all

n = 50;

xa = 0;
xb = 1;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = 4;
yb = exp(3) + 1;

for i=1:n
    a(i) = 1 / h^2;
    b(i) = 2 / h^2 + 9;
    c(i) = 1 / h^2;
    d(i) = -9*x(i);
end

b(1) = b(1) - a(1);
d(1) = d(1) + a(1) * ya * h;
a(1) = 0;   
d(n) = d(n) - c(n) * yb;
c(n) = 0;

y = Prohonku(a, b, c, d);

plot(x, y, 'b', x, exp(3*x) + x, 'r*')
hold on
grid on
            