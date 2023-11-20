

opcion=input('Bienbenido\n  Que volumen desea calcular?: \n1.Cubo \n2.Piramide \n3.Esfera \n4.Cono \n5.Cilindrio '); 

switch opcion
    case 1
        x=input('Ingresa el lado del cubo: ');
        y=area_cubo(x);
        disp(y);
        
    case 2
        a_b=input('ingresa el area de la base: ');
        h=input('Ingresa la altura: ');
        y=area_piramide(a_b,h);
        disp(y);
       
    case 3
        radio=input('Ingresa el valor del radio: ');
       y= area_esfera(radio);
        disp(y);
        
    case 4
        r=input('Ingresa el valor del radio ');
        h=input('Ingresa el valor de la altura: ');
        y=area_cono(r,h);
        disp(y)
    case 5
         r=input('Ingresa el valor del radio ');
        h=input('Ingresa el valor de la altura: ');
        y=area_cilindro(r,h);
        disp(y)


end

