clc;
clear all; 
close all;

x=[1;2.2];
u1=[0;0];
u2=[3;3];
s=[1.1 0.3;0.3 0.9];

display('Euclidean distance method: '); 
de1=sqrt((x(1,1)-u1(1,1))^2+(x(2,1)-u1(2,1))^2) 
de2=sqrt((x(1,1)-u2(1,1))^2+(x(2,1)-u2(2,1))^2) 
if de2<de1
  display('x is assigned as class 2');
else
  display('x is assigned as class 1');
end 
p=inv(s);

display('Mahalanobis distance method: '); 
dm1=sqrt((x-u1)'*p*(x-u1)) 
dm2=sqrt((x-u2)'*p*(x-u2))
if dm2<dm1
  display('x is assigned as class 2');
else
  display('x is assigned as class 1');
end
