%% area de un triangulo
base=input("Introduzaca la medid de la base: ");
altura=input("Introduzca la medidad e la altura: ");
area=.5*base*altura;
fprintf('El area del triangulo es: %-2f\n',area);
%x=[0 base];
%y=[0 altura];
hold on
axis equal
%grind on
plot([0 base],[0 0])
plot([0 0],[0 altura])

