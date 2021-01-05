% tests with paired data, samll is small t-test
% T06-Q3
% H0: muD =0 (both)    vs H1:  muD != 0
% H0: mu_x - mu_y >= 0 (left)
%make x be the one that suits the equation^, if not change to right
%dependent
% NOTE THAT P IS ALWAYS ALRD divided by two or not. it aint p otherwise.
clear all;
close all;
clc;

x = [1500 870 1120 1250 3460 1110 1120 880];
y = [941 456 893 1060 3107 1339 1346 644];
dataD = x-y;
%data3days=[197 161 144 162 185 154 136 130];
%data6days=[204 182 140 178 183 163 156 143];
%dataD=data3days-data6days;
ND = length(dataD);
muD = mean(dataD);
stdevD = std(dataD);
stderrorD = stdevD/sqrt(ND);

test = 0;

t = (muD-test)/stderrorD;

%side = 'both';
side = 'left';
if strcmp(side,'both')
    display('Two tailed test');
    p = 2*tcdf(-abs(t),ND-1);
elseif strcmp(side,'left')
    display('Left tail test');
    p = tcdf(-abs(t),ND-1);
else
    display('Right tail test');
    p = 1-tcdf(abs(t),ND-1);
end

alpha = 0.05;

display(t);
if p > alpha
    display(p);
    display(alpha);
    display('Since p > alpha, we do not reject H_0');
else
    display(p);
    display(alpha);
    display('Since p <= alpha, we reject H_0');
end