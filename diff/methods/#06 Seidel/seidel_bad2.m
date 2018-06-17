function x=Seidel_bad2(a,b,c,d,x,n,max_step)
% Система вида a(i)*x(i-1)-b(i)*x(i)+c(i)*x(i+1)=d(i)  a(1)=c(n)=0
% Учитываем a(1)=c(n)=0

for step=1:max_step 
    x(1)=(c(1)*x(2)-d(1))/b(1)
    for i=2:n-1
        x(i)=(a(i)*x(i-1)+c(i)*x(i+1)-d(i))/b(i);
    end
    x(n)=(a(n)*x(n-1)-d(n))/b(n)
end
end
