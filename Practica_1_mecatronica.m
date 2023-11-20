clc
clear all
%%
valor1=input('Ingrese un numero inicial del vector : ');
valor2=input('Ingrese un numero final del vector: ');
espacio=input('Ingrese el espacio entre cada elemento: ');
vector=[valor1:espacio:valor2];
disp(vector)
%%
clc
clear all
a=input('ingrese el primer numero del rango: ');
b=input('Ingrese el segundo numero del rango: ');

matriz = rand(5, 5) * (b - a) + a;

disp(matriz)
numer=input('Introduzca el valor minimo ');
valores_mayores=matriz(matriz>numer);
%fprint("Los valores mayores a %d son: ",numer)
disp('Los valores mayores son')
disp(valores_mayores)


%%
clc
clear all
usuario=input('Ingrese el usuario: ','s');
%contra=input('Ingrese su contraseña','s' );
u="admin";
c=123;
if u==usuario
   contra=input('Ingrese su contraseña','s' );
if contra==123
       disp('Bienvenido')
end 
else 
    disp('Error de credenciales')
    
    

end




        
       


%%