%% part 1
clc       %limpia el command window
clear     %"limpia" el workspace, borra variables previamente creadas 

%% asignacion de variables 
a=10;
b=2;

c=a+b

d=a/b

%% Matrices 

A=[1 1 1 1];              % mat de 1 fila por 4 columnas


%forma 1 de definir matrices NxM
B=[ 1 2 3; 4 5 6; 7 8 9]; 


%forma 2 de definir matrices NxM
Bb=[1 2 3                 
    4 5 6
    7 8 9];

%asignacion de filas a una matriz independeinte

B1=B(1,:);  
B2=B(2,:);
B3=B(3,:);

%matriz de 0
A0=zeros(3,3);
%matriz de 1
A1=ones(3,3);

A2=2*ones(3,3);
A2=3*ones(3,3);


C= [1 342 23
    2 5 5
    10 11 20]

cinv=inv(C)

% arreglo en 3 dimeciones 
AT(:,:,1)=ones(3,3);
AT(:,:,2)=2*ones(3,3);
AT(:,:,3)=3*ones(3,3);

%% part 3