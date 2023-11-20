clc
clear
clf

datos=[0 0
    33 0
    33 15
    12 15
    0 0]
 

%asignacion de la fila 1 de la mat datos al vector x
x=datos(:,1)
%asignacion de la fila 2 de la mat datos al vector y
y=datos(:,2)

n=length(x)
Sa=0
%% area
for i=1:n-1
    Sai=x(i)*y(i+1)-x(i+1)*y(i);
    
    Sa=Sa+Sai;
end

A=1/2*Sa
%% cx
Scx=0
for i=1:n-1
    Scxi=(x(i)+x(i+1))*(x(i)*y(i+1)-x(i+1)*y(i));
    
    Scx=Scx+Scxi;
end
Cx=Scx/(6*A)

%% cy
Scy=0
for i=1:n-1
    Scyi=(y(i)+y(i+1))*(x(i)*y(i+1)-x(i+1)*y(i));
    
    Scy=Scy+Scyi;
end
Cy=Scy/(6*A)

hold on
plot(x,y,'k','LineWidth',5,"c*")
plot(Cx,Cy,'+','LineWidth',5)



