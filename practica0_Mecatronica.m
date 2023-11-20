Mat1=[7 4 1;-4 -5 6;1 4 7];
Mat2=Mat1';
ProdEM1M2=Mat1.*Mat2;
SumM1M2=Mat1+Mat2;
DivEM1M2=Mat1./Mat2;
DivEM2M1=Mat2./Mat1;
ProdM1M2=Mat1*Mat2;
ProdM2M01=Mat2*Mat1;
DivM1M2=Mat1/Mat2;
DivM2M1=Mat2/Mat1;
PotEM1=Mat1.^3;
PotM2=Mat2^3;
Mat1(2,2)=7;
Mat2(2,2)=4;
EMat1=[Mat1(1,1) Mat1(1,3); Mat1(3,1) Mat1(3,3)];
V=diag(Mat2)';

