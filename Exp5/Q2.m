%Circular convolution using linear convolution
clc;
close all;
clear;
x=input("Enter Sequence 1:");
h=input("Enter Sequence 2:");
y=conv(x,h);
n=max(length(x),length(h));
z=y(1:n);
a=y(n+1:length(y));
disp(z);
disp(a);
a_new=[a zeros(1,n-length(a))];
disp(a_new);
y=z+a_new;
disp("Circular convolution product y:")
disp(y);
% Plotting the input sequences and the convolution result
% Create a figure window
figure;
% Plot the first sequence x
subplot(3, 1, 1);
stem(0:length(x)-1, x);
title('Input Sequence x[n]');
xlabel('n');
ylabel('x[n]');
grid on;
% Plot the second sequence h
subplot(3, 1, 2);
stem(0:length(h)-1, h);
title('Input sequence h[n]');
xlabel('n');
ylabel('h[n]');
grid on;
% Plot the convolution result y
subplot(3, 1, 3);
stem(0:n-1, y);
title('Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');
grid on;