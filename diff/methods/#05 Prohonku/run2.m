clc
clear all

n = 50;

xa = 1;
xb = 2;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = 0;
yb = 1;

for i=1:n
    a(i) = 1/h^2 + 1/(h*x(i));
    b(i) = 2/h^2;
    c(i) = 1/h^2 - 1/(h*x(i));
    d(i) = 4; 
end

d(1) = d(1) - a(1) * ya;
d(n) = d(n) - c(n) * yb;
a(1) = 0;
c(n) = 0;

y = Prohonku(a, b, c, d);

plot(x, y, 'b', x, x.^3 -2*x.^2 + 1, 'r*')
hold on
grid on
    