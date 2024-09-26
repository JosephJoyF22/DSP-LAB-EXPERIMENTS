%Multiplication property of DFT
clc;
close all;
clear all;
x1 = input("Sequence 1:");
x2 = input("Sequence 2:");
N=max(length(x1),length(x2));
x1new=[x1 zeros(1,N-length(x1))];
x2new=[x2 zeros(1,N-length(x2))];
product_time = x1new .* x2new;
dft_product_time=fft(product_time);
X1 = fft(x1new);
X2 = fft(x2new);
%Finding circular convolution of X1 and X2 using inbuilt function
Y=cconv(X1,X2,N);
%Display
disp("DFT{x1(n)*x2(n)}:");
disp(dft_product_time);
disp("X1(k)circonvX2(k)/N:");
disp(Y./N);
% Check if the values match
if isequal(round(dft_product_time, 5), round(Y./N, 5))
disp('Multiplication property verified!');
else
disp('Multiplication property not verified.');
end