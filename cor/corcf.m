%Correlation coefficient between mass of impactor and maximum contact force
clear all;
close all;
clc;

mass = [1 5 10 20 50];
force = [6.7 20 50 120 250];
displacement = [0.5 0.8 4 8 12];

r_tmp = corrcoef(mass,displacement);
r = r_tmp(2,1);
display(r);
