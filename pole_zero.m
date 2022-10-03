clc;clear all;close all
A1 =[1 -1];
B1 = [1]
figure()
zplane(A1,B1);title('For first order filter')
A2=[1 -2 1];
B2 =[1];
figure()
zplane(A2,B2);title('For second order filter');
figure()
A3=[1 0 -1];
B3 = [2];
zplane(A3,B3)
title('For central derivative filter');