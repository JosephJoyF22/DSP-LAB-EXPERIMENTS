%Overlap Add
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
    
    % Zero-padding the filter h to make its length N
    hnew = [h, zeros(1, N-hl)];
    
    % Calculate how many blocks will be processed
    L = N - hl + 1;  % Length of each block to process
    totalBlocks = ceil(xl / L);  % Total number of blocks
    
    % Zero-padding the input signal to make it a multiple of the block length
    xnew = [x, zeros(1, totalBlocks*L - xl)];
    
    % Initialize the result array y, large enough to hold the full result
    y = zeros(1, length(xnew) + hl - 1);
    
    % Loop through the signal in blocks of length L (without overlap)
    for i = 1:L:length(xnew)
        % Extract the current block from the input signal
        XB = xnew(i:min(i+L-1, length(xnew)));  % Get the current block
        
        % Zero-padding the current block to length N
        XB = [XB, zeros(1, N - length(XB))];
        
        % Perform FFT-based convolution: FFT, multiply in frequency domain, then IFFT
        YB = ifft(fft(XB) .* fft(hnew));
        
        % Add the result to the output signal at the appropriate location
        y(i:i+N-1) = y(i:i+N-1) + YB;  % Overlap-Add the result
    end
    
    % Display the final convolution result
    disp(y(1:xl+hl-1));
end
