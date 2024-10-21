Enter DFT sequence: [1 2 3 4]
Enter the value of N for N-point IDFT: 4
Displaying Twiddle Factor Matrix
   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i   1.0000 + 0.0000i
   1.0000 + 0.0000i   0.0000 + 1.0000i  -1.0000 + 0.0000i  -0.0000 - 1.0000i
   1.0000 + 0.0000i  -1.0000 + 0.0000i   1.0000 - 0.0000i  -1.0000 + 0.0000i
   1.0000 + 0.0000i  -0.0000 - 1.0000i  -1.0000 + 0.0000i   0.0000 + 1.0000i

IDFT without using Twiddle factor matrix multiplication:
   2.5000 + 0.0000i  -0.5000 + 0.5000i  -0.5000 + 0.0000i  -0.5000 - 0.5000i

IDFT using ifft:
   2.5000 + 0.0000i  -0.5000 - 0.5000i  -0.5000 + 0.0000i  -0.5000 + 0.5000i
