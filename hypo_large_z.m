% Hypothesis testing (large sample normal test)


clear all;
clc;

N = 100;          %sample size
x_bar = 11.98;    %sample mean
mu_0 = 12;       %test mean
S = 0.19; %sample standard deviation
stderror = S/sqrt(N);

z = (x_bar-mu_0)/stderror;

side = 'both'; %left, H0: mean>u0, question want: mean concentration smaller than value

if strcmp(side,'both')
    display('Two tailed test');
    display('Graph is showing one side instead of two-sided, hence it is showing p/2');
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
    display('Since p > alpha, Do not reject H_0');
else
    display(z);
    display(p);
    display(alpha);
    display('Since p <= alpha, Reject H_0');
end