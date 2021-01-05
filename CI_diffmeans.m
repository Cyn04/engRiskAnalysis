%CI of different means

clear all
clc;

mu_x = 110.6;
mu_y = 88.5;

stdev_x = 51.5;
stdev_y = 49.4;

Nx = 50;
Ny = 50;

confidence = 0.95;
alpha = 1-confidence;
alphaon2 = alpha/2;
Z_alphaon2 = norminv(alphaon2);
display(Z_alphaon2);
CI = [mu_x-mu_y+norminv(alphaon2)*sqrt(stdev_x^2/Nx+stdev_y^2/Ny), mu_x-mu_y-norminv(alphaon2)*sqrt(stdev_x^2/Nx+stdev_y^2/Ny)];
display(CI);