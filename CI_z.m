%Confidence interval Z test
clear all;
clc;

n = 50;                  % sample size
mu = 12.68;                 % sample mean (normally distributed)
stdev = 6.83;               % sample standard deviation
stderror = stdev/sqrt(n);   % sample standard error
alpha = 0.05;               % 95 confidence interval

alphaon2 = alpha/2;      
Z_alphaon2 = norminv(alphaon2);

CI = [mu+Z_alphaon2*stderror, mu-Z_alphaon2*stderror];
display(CI);