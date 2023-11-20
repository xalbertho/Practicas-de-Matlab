
radio1=1;
r_max=input('ingresa el radio maximo: ');
incremento=input('Ingresa el inncremento del radio: ');

    while radio1<=r_max
            if radio1==31
                radio1=radio1+incremento;
            end
        v=(4/3)*pi*radio1^3;
        fprintf('\nEl volumen con un radio %d es : %.2f',radio1,v);
                radio1=radio1+incremento;
                if(radio1==41)
                    break;
                end
                  

    end

    