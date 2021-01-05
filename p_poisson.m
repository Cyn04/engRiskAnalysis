%p_poisson
clear all;
close all;

t = 1; %wanted time period (years)
v = 3/12; %observed mean occurence within ONE TIME PERIOD^ (prob per one year)
x = 0; %wanted number of occurence
occurence = poisspdf(x,v*t);
display(occurence)