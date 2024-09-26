%Periodicity property of DFT
clc;
close all;
clear all;
% Input the sequence
x = input("Enter the sequence: ");
N = length(x); % Length of the sequence
% Compute DFT of the sequence
X = fft(x);
% Display DFT {x(n)}=X(k)
disp('DFT {x(n)}=X(k):');
disp(round(X, 5));
%Display X(k+N)
disp("X(k+N):")
k=1:N;
disp(round(X(mod(k+N-1, N)+1), 5));
% Show periodicity by comparing X(k) with X(k+N)
disp('Checking DFT periodicity:');
is_periodic = true;
for k = 1:N
if round(X(k), 5) ~= round(X(mod(k+N-1, N)+1), 5)
is_periodic = false;
break;
end
end
% Output result
if is_periodic
disp('The DFT is periodic with period N.');
else
disp('The DFT is not periodic.');
end