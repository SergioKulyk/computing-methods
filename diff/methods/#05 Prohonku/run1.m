clc
clear all

n = 50;

xa = 0;
xb = 2.5 * pi;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = -5;
yb = 2 * sin(7.5*pi) - 5;

for i=1:n
    a(i) = 1/h^2;
    b(i) = 2/h^2 - 9;
    c(i) = 1/h^2;
    d(i) = -45;
end

d(1) = d(1) - a(1) * ya;
d(n) = d(n) - c(n) * yb;
a(1) = 0;
c(n) = 0;

y = Prohonku(a, b, c, d);

plot(x, y, 'b', x, 2*sin(3*x) - 5, 'r*')
hold on
grid on
    