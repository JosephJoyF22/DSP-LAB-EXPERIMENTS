Theory:

1. LINEARITY:                                                     
The linear property of DFT states that the DFT of a linear weighted combination of two or more signals is equal to similar linear weighted combinations of the DET of individual signals.

DFT{x1(n)} =X1(k) and DFT{x2(n)} =X2(k)                          
DFT {a 1 x1(n) + a 2 x2(n)} = a 1 X1(k) + a 2 X2(k)                
Where a 1 and a 2 are constants                                 

2. MULTIPLICATION:                                                
The Multiplication property of DFT says that DFT of product of two discrete time sequences is equivalent to the circular convolution of the DFTs of the individual sequences scaled by a factor 1/N.

If DFT{x (n)} =X (k), then                                       
DFT{x1(n) x2(n)} = 1/N[X1(k)* X2(k)]                              

3. CIRCULAR CONVOLUTION:                                           
The Circular Convolution of two N point sequences x1(n) and x2(n) is defined as
x1 (n) * x2(n) =Σ(m=0)^(N-1) x1(m)x2 (n - m)N                       

4. PARSEVALS RELATION:                                             
Let DFT{x1(n)} = X1(k) and DFT{x2(n)} = X2(k) the by Parsevals relation
Σ(n=0)^(N-1) x1 (n) x2(n) = 1/N Σ(k=0)^(N-1) X1 (k)X2* (k)
