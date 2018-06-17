clc
clear all

n = 50;

xa = 0;
xb = pi/2;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = 0;
yb = 0;

for i=1:n
    a(i) = 1 / h^2;
    b(i) = 2 / h^2 - 1;
    c(i) = 1 / h^2;
    d(i) = 1;
end

d(1) = d(1) - a(1) * ya;
d(n) = d(n) - c(n) * yb;
a(1) = 0;
c(n) = 0;

y = Prohonku(a, b, c, d);

plot(x, y, 'b', x, 1 - cos(x) - sin(x), 'r*')
hold on
grid on
            