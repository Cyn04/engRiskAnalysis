% small sample tests for the difference b/t two means
% H0: mu_x - mu_y >= 0 (left)
% Pooled and unpooled


clear all
close all;
clc;


xi = [51 52 55];
Nx = numel(xi);     %sample size
X = mean(xi);    %sample mean
Sx = std(xi); %sample standard deviation
display(Sx);

yi = [50 54 59 56 50 58];
Ny = numel(yi);     %sample size
Y = mean(yi);    %sample mean
Sy = std(yi); %sample standard deviation
display(Sy);

%Sy/Sx > 2 nominator is larger
if max(Sy,Sx)/min(Sy,Sx) >= 2
    display('un-pooled');
    t = (X-Y)/sqrt(Sx^2/Nx+Sy^2/Ny);
    v = (Sx^2/Nx+Sy^2/Ny)^2/((Sx^2/Nx)^2/(Nx-1)+(Sy^2/Ny)^2/(Ny-1));
    N = floor(v); %degrees of freedom 
else
    display('pooled');
    W = sqrt(((Nx-1)*Sx^2 + (Ny-1)*Sy^2)/(Nx+Ny-2));
    t = (X-Y)/(W*sqrt(1/Nx+1/Ny));
    N = Nx+Ny-2; %degrees of freedom
end

side = 'left';

if strcmp(side,'both')
    display('Two tailed test');
    p = 2*tcdf(-abs(t),N);
elseif strcmp(side,'left')
    display('Left tail test');
    p = tcdf(-abs(t),N);
else
    display('Right tail test');
    p = 1-tcdf(abs(t),N);
end

alpha = 0.05;

if p > alpha
    display(t);
    display(p);
    display(alpha);
    display('Since p > alpha,  we do not rejectH_0');
else
    display(t);
    display(p);
    display(alpha);
    display('Since p <= alpha, we reject H_0');
end