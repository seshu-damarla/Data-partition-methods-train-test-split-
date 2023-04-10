
%dvenugopalarao%

clc
clear 
close all

rng default

[data,txt,raw]=xlsread('N2-Data.xlsx',1);
       
x=[data(:,1:4) data(:,5)];
y=data(:,7);

Ns=floor(0.8*length(data));
[xtrain,xtest,ytrain,ytest]=train_test_data(x,y,'HS',Ns,0);

