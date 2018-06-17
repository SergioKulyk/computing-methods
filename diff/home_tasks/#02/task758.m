clc
clear all

n = 50;

xa = 1;
xb = 5;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = exp(-1) - 1;
yb = exp(-5) - 1;

for i=1:n
    a(i) = 1 / h^2;
    b(i) = 2 / h^2 + 1;
    c(i) = 1 / h^2;
    d(i) = 1;
end

d(1) = d(1) - a(1) * ya;
d(n) = d(n) - c(n) * yb;
a(1) = 0;
c(n) = 0;

y = Prohonku(a, b, c, d);

C1 = 0;
plot(x, y, 'b', x, exp(-x) - 1, 'r*')
hold on
grid on
            