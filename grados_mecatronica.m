
val_1=input('Introduzca el primer valor de grados centigrados: ');
val_2=input('Introduzca el valor final de grados centigrados:');
incre=input('De cuanto desea el incremento?');

vec_tem=val_1:incre:val_2;
tempe_f=(9/5.*vec_tem)+32;


for i=1:length(vec_tem)
    fprintf('%.2f      %.2f\n',vec_tem(i),tempe_f(i))

end






  






















%%