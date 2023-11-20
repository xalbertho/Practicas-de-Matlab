

a=linspace(-5,5,40);
b=linspace(-1,8,40);

[A,B]=meshgrid(a,b);

f1=(A.^2-2*A).^2.*exp(-A.^2-B.^2-A*B);

figure(1)
mesh(A,B,f1)

figure(2)

surf(A,B,f1)

figure (3)
contour(A,B,f1);

figure (4)
surfc(A,B,f1)

figure (5)
contour3(A,B,f1);

figure (6)
waterfall(A,B,f1)


