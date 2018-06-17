clc
clear all

n = 50;

xa = 0;
xb = 1;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = 1;
yb = 2;

for i=1:n
    a(i) = 1 / h^2;
    b(i) = 2 / h^2 - 1;
    c(i) = 1 / h^2;
    d(i) = 3 + x(i)^2 + 1 / (x(i)^2 + 1);
end

d(1) = d(1) - a(1) * ya;
d(n) = d(n) - c(n) * yb;
a(1) = 0;
c(n) = 0;

y = Seidel(x, a, b, c, d, n, 2000, 10^-5);

plot(x, y, 'b', x, x.^2 + 1, 'r*');
hold on
grid on
            