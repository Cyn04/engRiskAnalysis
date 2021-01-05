%Tutorial 09 group 03
%Monte Carlo With Histogram for Cl
clear all; 
close all;
clc;

rng(123);
mu = 3;
sigma = 1;
size = 1000;

r = mu+sigma.*randn(size,1);
%generate histogram
hist(r,15);
xlabel('Cl(mg/L)');
ylabel('Sample Size');
grid on;

%calculate probability of failure
n = length(r);
allowable_amount = 5;
counter = 0;

for i = 1:n
    if r(i)>allowable_amount
        counter = counter+1;
    end
end

probability_failure = counter/size*100;
display(probability_failure);