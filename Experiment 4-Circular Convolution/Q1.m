%Circular convolution using concentric circle method
clc;
close all;
clear all;
x1 = input("Enter sequence 1:");
x2 = input("Enter sequence 2:");
N=max(length(x1),length(x2));
x1new=[x1 zeros(1,N-length(x1))];
x2new=[x2 zeros(1,N-length(x2))];
x1new=x1new(:,end:-1:1);
disp("Reversed x");
disp(x1new);
for i=1:length(x1new)
x1new=[x1new(end) x1new(1:end-1)];
y(i)=sum(x1new.*x2new);
end
disp("Convolution product y:");
disp(y);
% Plot the convolution result y
stem(0:length(y)-1, y);
title('Convolution Result y[n]');
xlabel('n');
ylabel('y[n]');
grid on;