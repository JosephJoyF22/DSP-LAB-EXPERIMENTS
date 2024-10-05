%Circular Convolution using DFT
clc;
close all
clear all;
x=input("Enter Sequence 1:");
h=input("Enter Sequence 2:");
x_len=length(x);
h_len=length(h);
n=max(h_len,x_len);
xnew=[x zeros(1,n-x_len)];
hnew=[h zeros(1,n-h_len)];
x1=fft(xnew);
h1=fft(hnew);
y1=x1.*h1;
y=ifft(y1);
y_ind=0:n-1;
disp("Convolution product y:")
disp(y);
% Plot the convolution result y
stem(y_ind,y,"filled");
title("Convolution");
xlabel("Index of y");
ylabel("Value of y")
grid on;