clear all
clc
global f v T h hs x n a b c d

Initial;

step=0;
step_max=150;
eps=1.0e-3;
err=10;

while step < step_max & err > eps
    err=Find_F_and_V;
    step=step+1;
    fprintf('%4.0f  %12.4e\n',step,err);
end
Find_T;

plot(x,f,'r',x,T,'b')