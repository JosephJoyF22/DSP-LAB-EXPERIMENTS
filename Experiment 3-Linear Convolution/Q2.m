%Linear convolution without using inbuilt functions
% Input sequences and their indices
x = input('Enter input sequence x: ');
x_ind = input('Enter index of x: ');
h = input('Enter impulse response h: ');
h_ind = input('Enter index of h: ');
% Get the length of the sequences
len_x = length(x);
len_h = length(h);
% Calculate the length of the convolution result
len_y = len_x + len_h - 1;
% Initialize the result sequence with zeros
y = zeros(1, len_y);
% Perform the convolution
for i = 1:len_x
for j = 1:len_h
y(i + j - 1) = y(i + j - 1) + x(i) * h(j);
end
end
% Determine the time indices for the convolution result
y_ind = min(x_ind) + min(h_ind) : max(x_ind) + max(h_ind);
% Display the result
disp('Linear Convolution Result:');
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