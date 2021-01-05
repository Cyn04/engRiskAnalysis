%finding t test, its cI

clear all;
close all;
clc;

data = [13.7 12.0 13.1 14.1 13.1];

n = length(data);
mu = mean(data);
stdev = std(data);
stderror = stdev/sqrt(n);
confidence = 0.95;

alpha = 1- confidence;
alphaon2 = alpha/2;

t_alphaon2 = tinv(alphaon2,n-1);
display(t_alphaon2);

CI = [mu+tinv(alphaon2,n-1)*stderror, mu-tinv(alphaon2,n-1)*stderror];
display(CI);