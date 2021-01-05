%Finding z score and t score without table

Z_alphaon2 = norminv(0.01/2)


alpha = 1- confidence;
alphaon2 = alpha/2;
t_alphaon2 = tinv(alphaon2,n-1)


%std of data
data = [25, 26, 28, 30, 32, 29, 29, 30, 33, 26];
std(data)
mu = mean(data)