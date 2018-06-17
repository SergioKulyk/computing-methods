clc
clear all

n = 50;

xa = 0;
xb = 1;

h = (xb - xa) / (n + 1);

for i=1:n
    x(i) = xa + i*h;
end

ya = 5;
yb = 6;

for i=1:n
    a(i) = x(i) / h^2 + 2 / (2*h);
    b(i) = x(i) * 2 / h^2 ;
    c(i) = x(i) / h^2 - 2 / (2*h);
    d(i) = 4;
end

d(1) = d(1) - a(1) * ya;
d(n) = d(n) - c(n) * yb;
a(1) = 0;
c(n) = 0;
y = Seidel(x, a, b, c, d, 1.8, n, 1000, 10^-5);

C1 = 0;
plot(x, y, 'b', x, 3 * x.^3 - 2.*x + 5, 'r*')
hold on
grid on
            