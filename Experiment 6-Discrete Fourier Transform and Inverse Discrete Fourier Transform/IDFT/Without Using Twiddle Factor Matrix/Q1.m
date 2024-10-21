%IDFT with and without using inbuilt function
clc;
clear all;
close all;
X=input("Enter DFT sequence: ");
L=length(X);
N=input("Enter the value of N for N-point IDFT:");
if N>=L
Xn=[X zeros(1,N-L)];
x=zeros(1,N);
for n=0:N-1
for k=0:N-1
x(n+1)=x(n+1)+((Xn(k+1).*exp(1i*2*pi*n*k/N))/N);
end
end
disp("IDFT without using inbuilt function:");
disp(round(x,5));
y=round(ifft(Xn,N),5);
disp("IDFT using ifft:");
disp(y);
else
disp("N-point IDFT cannot be found!")
end