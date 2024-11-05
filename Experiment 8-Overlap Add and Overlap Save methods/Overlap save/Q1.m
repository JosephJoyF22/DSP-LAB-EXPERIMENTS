%Overlap Save
clc;                    % Clear command window
clear all;              % Clear workspace variables
close all;              % Close all figures

% Input the sequences and the length of each block
x = input("enter x:");  % Input signal
h = input("enter h:");  % Impulse response/filter
N = input("enter length to divide:");  % Input length for block processing

% Check if N is smaller than the length of the filter
if N < length(h)
    disp("not possible");  % If N is too small, display an error message
else
    % Get the lengths of the input sequences
    xl = length(x);   % Length of input signal x
    hl = length(h);   % Length of impulse response h
    
    % Calculate the number of elements to process in each block
    L = N - hl + 1;   
    
    % Zero-padding the filter h to make its length N
    hnew = [h, zeros(1, N-hl)];
    
    % Zero-padding the input signal x with hl-1 zeros at the beginning and
    % N-1 zeros at the end to align with the filter
    xnew = [zeros(1, hl-1), x, zeros(1, N-1)];
    
    % Initialize the result array y
    y = [];
    
    % Loop through the signal in blocks of length N
    for i = 1:L:length(xnew) - N + 1
        % Extract the current block from the input signal
        XB = xnew(i:i+N-1);
        
        % Perform FFT-based convolution: FFT, multiply in frequency domain, then IFFT
        YB = ifft(fft(XB) .* fft(hnew));
        
        % Append the useful part of the result (discard the first hl-1 elements)
        y = [y, YB(hl:end)];
    end
    
    % Display the final convolution result
    disp(y(1:xl+hl-1));
end
