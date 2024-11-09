FIR Filter Theory and Expressions

Basic FIR Principle:
FIR filters implement y(n) = Σ h(k)x(n-k), providing finite impulse response with inherent stability and linear 
phase characteristics.

Window Functions:
1. Hamming:   w(n) = 0.54 - 0.46cos(2πn/N)         [-43dB attenuation]
2. Hanning:   w(n) = 0.5[1 - cos(2πn/N)]           [-31dB attenuation]
3. Boxcar:    w(n) = 1                             [-13dB attenuation]
4. Bartlett:  w(n) = 1 - |2n/N - 1|                [-26dB attenuation]

Filter Expressions:

1. Lowpass:   h(n) = (sin(ωc(n-M))/(π(n-M)))w(n)
  Passes frequencies below cutoff ωc
  
2. Highpass:  h(n) = -[sin(ωc(n-M))/(π(n-M))]w(n)
  Passes frequencies above cutoff ωc
  
3. Bandpass:  h(n) = [(sin(ω2(n-M)) - sin(ω1(n-M)))/(π(n-M))]w(n)
  Passes frequencies between ω1 and ω2
  
4. Bandstop:  h(n) = [(sin(ω1(n-M)) + sin(π(n-M)) - sin(ω2(n-M)))/(π(n-M))]w(n)
  Attenuates frequencies between ω1 and ω2

Key Parameters:
- N: Filter order (higher order = sharper cutoff)
- M: Filter delay (N/2)
- ωc: Digital cutoff frequency (2πfc/fs)
- ω1, ω2: Band edge frequencies
