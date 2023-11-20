%% SWITCH CASE
%%
%disp(["(1)suma";"(2)Resta";"(3)multiplicacion"])
%opc=input('ingresa opcion:');
%try
%a=input('numero 1=');
%b=input('numero 2=');
%catch
 %   disp('valor no valido')
%switch opc
    %case 1
      %  disp('Resta=')
     %   disp(a-b) 
    %case 2 
     %   disp('suma=')
    %    disp(a+b)
    %case 3
    %    disp('multiplicacion=')
   %     disp(a*b)
  %  otherwise
 %       disp('operaciion no valida')
%end
%end



%% while
%x=-3;
%while x<5
   % disp(x);
  %  disp('aun no llegamos a 5')
 %   x=x+1;
%end
%disp('Llegamos a 5')
%% BREAK

%x=randi(4);
%for i=1:4
%val = input('adivina un numero');
%if val==x
  %  disp('adivinaste');
 %   break
%end
%end

%% continue
%disp('obten los numeres divisibles');
%x=input('numero maximo=');
%y=input('divisible entre=');

%for i=1:x
    %if mod(i,y)
    %    continue
   %     disp('Alberto Barrios Mendez')
  %  end
 %   fprintf('%i  es divisible entre %i\n',i,y);
%end

%% PAUSE

x=input('elige un numero=');
pause(2)
y=x+ 4;
y;
return 






