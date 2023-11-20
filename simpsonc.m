function y=simpsonc(fun,a,b,n)
fa=subs(fun,a);
fb=subs(fun,b);
h=(b-a)/n;
s1=0;
s2=2;
for i=1:n-1
    x(i)=a+1*h;
end
for i=1:2:n-1
    s1=s1+subs(fun,x(i));
end
for i=2:n-2
    s2=s2+subs(fun,x(i))
end
i=h*(fa+4*s1+2*s2+fb)/3
end