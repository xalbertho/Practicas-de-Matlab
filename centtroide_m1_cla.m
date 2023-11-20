clc
clear
clf


%puntos de entrada de la geometria
datos=[0 0
    12 15
    33 15]
 
% datos=[0 30
%     210 30
%     210 300
%     240 300]

%asignacion de la fila 1 de la mat datos al vector x
x=datos(:,1)
%asignacion de la fila 2 de la mat datos al vector y
y=datos(:,2)

%tamaña del vector x
n=length(x)


%datos inciales para el calculo 
A=0;
Qx=0;
Qy=0;


for i=1:n-1
    
    
    fprintf('------------geo %d----------\n',i)
    fprintf('\n')
    
    if y(i)>y(i+1)
        %% caso 1
        fprintf('caso 1\n')
        fprintf('\n')
        fprintf('\n')
        
        b=x(i+1)-x(i);
        ht=y(i)-y(i+1);
        hr=y(i+1);
        
        % area
        At=b*ht/2; 
        Ar=b*hr;
        
        Ai=At+Ar;
        A=A+Ai;
        
        % triangulo
        
        xt=1/3+bx(i);
        yt=1/3*ht+y(i+1);
        % momentos de area
        
        qxt=yt*At;
        qyt=xt*At;
        
        % rectangulo
        
        xr=b/2+x(i);
        yr=hr/2;
       
        qxr=yr*Ar;
        qyr=xr*Ar;
        
        % primer momento de area
        % momento de area local(i)
        Qxi=qxt+qxr;
        Qyi=qyt+qyr;
        
        
        Qx=Qx+Qxi;
        Qy=Qy+Qyi;
        
        fprintf('Area t %d Arear %d \n',At,Ar)   
        fprintf('xt   %d   yt %d \n',xt,yt)
        fprintf('xr   %d   yr %d \n',xr,yr)
        
         fprintf('\n')
        fprintf('\n')
        
    elseif y(i+1)>y(i)
        %% caso 2
        fprintf('caso 2 \n')
        fprintf('\n')
        fprintf('\n')
        
        b=x(i+1)-x(i);
        ht=y(i+1)-y(i);
        hr=y(i);
        
        % area
        At=b*ht/2; 
        Ar=b*hr;
        
        Ai=At+Ar;
        A=A+Ai;
        
        % triangulo
        
        xt=2/3*b+x(i);
        yt=1/3*ht+y(i);
        % momentos de area
        
        qxt=yt*At;
        qyt=xt*At;
        
        % rectangulo
        
        xr=b/2+x(i);
        yr=hr/2;
       
        qxr=yr*Ar;
        qyr=xr*Ar;
        
        % primer momento de area
        % momento de area local(i)
        Qxi=qxt+qxr;
        Qyi=qyt+qyr;
        
        
        Qx=Qx+Qxi;
        Qy=Qy+Qyi;
        
        fprintf('Area t %d Arear %d \n',At,Ar)   
        fprintf('xt   %d   yt %d \n',xt,yt)
        fprintf('xr   %d   yr %d \n',xr,yr)
        
        fprintf('\n')
        fprintf('\n')
        
    else 
        %% caso 3
        fprintf('caso 3 \n')
        fprintf('\n')
        fprintf('\n')
        
        
        b=x(i+1)-x(i);

        hr=y(i);
        
        % area
     
        Ar=b*hr;
        
        Ai=Ar;
        A=A+Ai;
        

        
        % rectangulo
        
        xr=b/2+x(i);
        yr=hr/2;
       
        qxr=yr*Ar;
        qyr=xr*Ar;
        
        % primer momento de area
        % momento de area local(i)
        Qxi=qxr;
        Qyi=qyr;
        
        
        Qx=Qx+Qxi;
        Qy=Qy+Qyi;
        
        
       fprintf(' Arear %d \n',Ar)   
        
        fprintf('xr   %d   yr %d \n',xr,yr)
         fprintf('\n')
        fprintf('\n')
        
    end
    
end
%% imprime los valores del area 
A
Qx
Qy

%% centoride 
Xc=Qy/A
Yc=Qx/A
%% grafica 
figure(1)
hold on
grid on
plot(x,y,'k')
area(x,y)
plot(Xc,Yc,'O')
