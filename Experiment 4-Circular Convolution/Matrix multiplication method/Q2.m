%Circular convolution using matrix multiplication
clc;
close all;
clear all;
x1 = input("Enter sequence 1:");
x2 = input("Enter sequence 2:");
N=max(length(x1),length(x2));
x1new=[x1 zeros(1,N-length(x1))];
x2new=[x2 zeros(1,N-length(x2))];
m=[];
x2new=x2new(:,end:-1:1);
for i=1:length(x2new)
x2new=[x2new(end) x2new(1:end-1)];
m=[m;x2new];
end
y=m*x1new';%matrix multiplication
disp("Convolution product y:")
disp(y);
% Plot the convolution result y
stem(0:length(y)-1, y);
title('Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');
grid on;