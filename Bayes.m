clc;
clear all;
close all;

p1=input('Enter the value of p1:');
p2=input('Enter the value of p2:');
m1=[1 1];
m2=[3 3];
n1=m1';
n2=m2';
s=[1 0;0 1];
x=[1.8 1.8]';
P1=p1*mvnpdf(x,n1,s)
P2=p2*mvnpdf(x,n2,s)
mu=[m1;m2];
p=[P1;P2];
sigma=cat(3,[2,0;0,0.5],[1,0;0,1]);
obj=gmdistribution(mu,s,p);
display(obj)
ezsurf(@(x,y)pdf(obj,[x,y]),[-10 10],[-10 10]);
