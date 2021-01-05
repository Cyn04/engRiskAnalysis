%binomial distribution
clear all;
close all;

p = 0.05; %failure_rate
n = 4; %total trials
x = 0; %number you want to fail/succeed
number_failure = binopdf(x, n, p); %add in number of failures, binocdf if cumulative to wanted, so less than 3, we want 2
%two or more tires, x = 1 tire, 1 - ninopdf
display(number_failure) %answer will be probability of 0 FAILURE