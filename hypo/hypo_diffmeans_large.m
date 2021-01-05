% H0: mu_x - mu_y >= 0 (left)
%is this H0 what you want? if yes, run it. dont change.
% dont think left or right matters much in terms of p
%z test

clear all
close all;
clc;

x_bar = 40; %mean  
Sx = 12; %stdv
Nx = 75; 

y_bar = 42; %mean 
Sy = 15; %stdv
Ny = 100; 


test_difference = 0;

z = ((x_bar-y_bar)-test_difference)/sqrt(Sx^2/Nx+Sy^2/Ny);

side = 'left'; 
 
if strcmp(side,'both')
    display('Two tailed test');
    display('Graph is showing one side instead of two-sided, hence it is showing p/2')
    normspec([-inf -abs(z)],0,1);
    p = 2*normcdf(-abs(z));
elseif strcmp(side,'left')
    display('Left tail test');
    normspec([-inf -abs(z)],0,1);
    p = normcdf(-abs(z));
else
    display('Right tail test');
    normspec([abs(z) inf],0,1);
    p = 1-normcdf(abs(z));
end

alpha = 0.05;

if p > alpha
    display(z);
    display(p);
    display(alpha);
    display('Since p > alpha, Accept H_0');
else
    display(z);
    display(p);
    display(alpha);
    display('Since p <= alpha, Reject H_0');
end