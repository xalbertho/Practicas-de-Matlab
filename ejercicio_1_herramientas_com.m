% operaciones basicas
%a)
5-3*9-6 + 15/6;

%b)
5-3*(9-6) + 15/6;

%c)
(5-3)*(9-6)+15/6;

%d
((5/3+2/7)/2)-3/4;
% e)
(3/4-1/2*(1+1/3))/(2-1/2);
%f)
(1/2+3/4-(-1/6)*(1/2)^2)/(2-(1/2)^2);
% definamos algunas variables y realicemos operaciones con ellas
A=127;, B=23;, C=579; X=C/B

Y=A*B/C
% utilizando el formato largo realicemos lo siguiente
format long;
5-3*9-6+15/6;
%b)
5-3*(9-6)+15/6;
%c)
(5-3)*(9-6)+15/6;
%c)
(5-3)*(9-6)+(15/6);
%d)
5/3+2/7;
%e)
((5/3+2/7)/2)-3/4;
%con el formtao racional realicemos lo siguiente
5-3*9-6+15/6;
format rat;
%a)
5-3*9-6+15/6;
%b)
5-3*(9-6)+15/6;
%c)
(5-3)*(9-6)+(15/6);
%d)
5/3+2/7;
%e)
((5/3+2/7)/2)-3/4;
%utilizando numeros complejos realice operaciones basicas
z1=6+8i;
z2=9*8+9i;
z3=6i/5;
z1*z3/z2;
z1+z1+z2+z3;
z3/z2;


%utilizando numeros complejos realice operaciones basicas
z1=6+8i;
z2=9*8+9i;
z3=6i/5;
z1*z3/z2;
z1+z1+z2+z3;
z3/z2;
% elevar un numero al cuadrado
z2^2
% obtener el modulo de un numero complejo
abs(z2)
%obtener el angulo del complejo
angle(z3)
%obtener el conjugado
conj(z1)
%obtener la parte real
real (z2)
%obtener la parte imaginaria
imag(z1)
%obtener la raiz de un numero complejo
z = 3 - 2i;
n = 4;
k = 0:3;
theta = angle(z);
raiz_z = nthroot(abs(z),n)*exp(i*(theta+2*k*pi)/n)
%graficar numeros complejos en el plano polar
compass(raiz_z)