Theory: 

In digital signal processing, linear convolution of long sequences is often inefficient when 

performed directly, especially when the sequences are large. To address this, two popular 

methods are used: Overlap-Add and Overlap-Save. Both methods use the Fast Fourier 

Transform (FFT) to speed up the convolution process and are suitable for processing long 

signals in smaller segments. 

1. Overlap-Add Method 

The Overlap-Add (OLA) method divides the input signal into smaller, non-overlapping 

segments, performs convolution on each segment, and then combines (adds) the overlapping 

portions of the results. 

2. Overlap-Save Method 

The Overlap-Save (OLS) method, in contrast, uses overlapping input signal segments to 

perform the convolution and discards the unwanted portions of the result. This method is 

particularly useful when performing convolution on a continuous stream of data.
