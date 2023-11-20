
m=input('Ingresa el numero de filas de la matriz: ');
n=input('Ingresa el numero de columnas de la matriz; ');

    for i=1:m
            for j=1:n
                fprintf('Ingresa el valor(%d,%d): ',i,j);
                matriz(i,j)=input(' ');
            end

    end

    disp(matriz)
