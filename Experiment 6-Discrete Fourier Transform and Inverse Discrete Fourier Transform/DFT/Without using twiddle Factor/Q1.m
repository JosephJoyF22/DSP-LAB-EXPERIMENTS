%DFT with and without using inbuilt function
clc;
clear all;
close all;
% Input sequence
x = input("Enter the sequence: ");
N=input("Enter value of N for N-point DFT :");
L = length(x);
if N>=L %Checking if N>= length of input sequence
xn = [x,zeros(1, N-L)];
X=zeros(1,N);
% DFT computation without inbuilt function
for k = 0:N-1
for n = 0:N-1
X(k+1) = X(k+1) + xn(n+1) .* exp(-1i * 2 * pi * n * k / N);
end
end
% Displaying results
disp("DFT without inbuilt function:");
disp(round(X, 5));
disp("DFT using FFT:");
y = fft(xn, N);
disp(round(y,5));
% Magnitude spectrum
mag = abs(X);
subplot(2, 1, 1);
stem(0:N-1, mag);
title('Magnitude Spectrum (DFT)');
xlabel('Frequency Index');
ylabel('Magnitude');
% Phase spectrum
ph = atan2(imag(X),real(X)); % Or use angle(X)
subplot(2, 1, 2);
stem(0:N-1, ph);
title('Phase Spectrum (DFT)');
xlabel('Frequency Index');
ylabel('Phase (radians)');
else %if N< length of input sequence
disp("DFT cannot be calculated !")
end