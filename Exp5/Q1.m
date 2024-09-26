%linear convolution using Circular convolution
clc;
close all;
clear all;
x=input("Enter Sequence 1:");
x_ind=input("Index of sequence 1:");
h=input("Enter Sequence 2:");
h_ind=input("Index of sequence 2:");
x_len=length(x);
h_len=length(h);
y_ind = min(x_ind) + min(h_ind) : max(x_ind) + max(h_ind);
n=x_len+h_len-1;
xnew=[x zeros(1,n-x_len)];
hnew=[h zeros(1,n-h_len)];
x1=fft(xnew);
h1=fft(hnew);
y1=x1.*h1;
y=ifft(y1);
disp("Linear convolution product y:")
disp(y);
% Plotting the input sequences and the convolution result
% Create a figure window
figure;
% Plot the first sequence x
subplot(3, 1, 1);
stem(x_ind, x);
title('Input Sequence x[n]');
xlabel('n');
ylabel('x[n]');
grid on;
% Plot the second sequence h
subplot(3, 1, 2);
stem(h_ind, h);
title('Impulse Response h[n]');
xlabel('n');
ylabel('h[n]');
grid on;
% Plot the convolution result y
subplot(3, 1, 3);
stem(y_ind, y);
title('Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');
grid on;