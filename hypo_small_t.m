% Hypothesis testing (small sample t-test)
%note that the answer p would be alrd divided by 2, which the table is not
clear all;
clc;

data = [93.2 87.0 92.1 90.1 87.3 93.6];
N = 6;          %sample size
x_bar = mean(data);    %sample mean
mu_0 = 85;        %test mean
S = std(data);        %sample standard deviation


%{
N = 12;          %sample size
x_bar = 61.3;    %sample mean
mu_0 = 65;        %test mean
S = 5.2;        %sample standard deviation
%}

stderror = S/sqrt(N);
t = (x_bar-mu_0)/stderror;

side = 'right';  %right, H0: mean<u0, question want: mean concentration is greater than value

if strcmp(side,'both')
    display('Two tailed test');
    p = 2*tcdf(-abs(t),N-1);
elseif strcmp(side,'left')
    display('Left tail test');
    p = tcdf(-abs(t),N-1);
else
    display('Right tail test');
    p = 1-tcdf(abs(t),N-1);
end

alpha = 0.05;

if p > alpha
    display(t);
    display(p);
    display(alpha);
    display('Since p > alpha,  Do not rejectH_0');
else
    display(t);
    display(p);
    display(alpha);
    display('Since p <= alpha, Reject H_0');
end