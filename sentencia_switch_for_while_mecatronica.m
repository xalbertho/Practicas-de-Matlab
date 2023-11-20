 

fprintf('Selecciona una opcion\n ');
fprintf('a) Suma\n b) Resta\n');

opcion=input( ' ','s');

    switch opcion
        case {'a','A'}
            x=input('Valor 1: ');
            y=input('Valor 2: ');
            c=x+y; disp(c);
        case{'b','B'}
            x1=input('Valor 1: '); y2=input('Valor 2: ');
            c1=x1-y2; disp(c);

        otherwise
            fprintf('Opcion no valida')
    end
 