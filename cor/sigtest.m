%sig test
clear all;
close all; 
clc; 

a = [2 4 6 8 10 12 14 16]; 
b = [20  33  65  69  90  110  130  158];

alpha = 0.05;
r_ab = corrcoef(a, b);
r = r_ab(1,2);
display(r);
len = length(b); 
df = len-2;
display(df);

t = r/sqrt((1-r^2)/df);
display(t);
display('Two tailed test');
p = 2*tcdf(-abs(t), df);
if p>alpha
    display(p);
    display(alpha);
    display('Since p<alpha, we do not rejectH_0,');
    display('There is no evidence of a linear relationship at the 5% level of significance');
else 
    display(p);
    display(alpha);
    display('Since p<alpha, we rejectH_0,');
    display('There is evidence of a linear relationship at the 5% level of significance');
end