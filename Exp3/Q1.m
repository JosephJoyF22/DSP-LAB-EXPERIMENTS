% Linear Convolution using inbuilt function
clc;
clear;
close all;
% Input sequences and their indices
x = input('Enter input sequence x: ');
x_ind = input('Enter index of x: ');
h = input('Enter impulse response h: ');
h_ind = input('Enter index of h: ');
% Linear convolution
y = conv(x, h);
% Determine the time indices for the convolution result
y_ind = min(x_ind) + min(h_ind) : max(x_ind) + max(h_ind);
% Display the convolution result
disp('Convolution result y:');
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
9
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