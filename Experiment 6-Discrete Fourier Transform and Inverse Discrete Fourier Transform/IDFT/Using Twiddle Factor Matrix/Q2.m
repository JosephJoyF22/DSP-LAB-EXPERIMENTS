%IDFT with and without using inbuilt function
clc;
clear all;
close all;

X = input("Enter DFT sequence: ");
L = length(X);
N = input("Enter the value of N for N-point IDFT: ");

if N >= L
    Xn = [X zeros(1, N-L)];
    
    % Create twiddle factor matrix
    n = 0:N-1;
    k = 0:N-1;
    W = exp(1i * 2 * pi * (n' * k) / N);
    
    disp("Displaying Twiddle Factor Matrix");
    disp(W);
    
    % Compute IDFT
    x = (W * Xn') / N;
    
    disp("IDFT without using Twiddle factor matrix multiplication:");
    disp(round(x', 5));
    
    y = round(ifft(Xn, N), 5);
    disp("IDFT using ifft:");
    disp(y);
else
    disp("N-point IDFT cannot be found!")
end