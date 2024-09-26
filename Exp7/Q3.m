%Circular Frequency shift property of DFT
clc;
close all;
clear all;
x = input("Enter sequence:");
m = input("Enter the Frequency shift:");
N=length(x);
n=0:N-1;
freq_shifted_x = exp(1i * 2 * pi * m * n / length(x)) .* x;
X = fft(x);
X_new=fft(freq_shifted_x);
X_shifted=circshift(X,m);
disp("DFT{x(n)exp(2pi*i*mn/N)}:");
disp(X_new);
disp("X(k-m):");
disp(X_shifted);
% Check if the values match
if isequal(round(X_new, 5), round(X_shifted, 5))
disp('Circular frequency shift verified!');
else
disp('Circular frequency shift not verified.');
end