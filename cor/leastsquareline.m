clear all;
close all; 
clc; 

mass = [1 5 10 20 50]; 
force = [6.7 20 50 120 250]; 
displacement = [0.5 0.8 4 8 12];
%leasr squares line
cftool;

%x data is the 'from' value. 
%y data is the 'for' value.
%y = p1(x)+p2