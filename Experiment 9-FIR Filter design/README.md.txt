# Digital Filter Design Using Window Methods

## Introduction
This repository contains MATLAB implementations of FIR filter design using various window methods. The project demonstrates the design and analysis of Lowpass, Highpass, Bandpass, and Bandstop filters using four classical window functions: Rectangular, Hamming, Hanning, and Bartlett.

## Theory

### Window Functions
Different window functions offer unique trade-offs between frequency resolution and spectral leakage:

* **Rectangular Window (Boxcar)**
  - Simplest window function [w(n) = 1]
  - Best frequency resolution (narrowest main lobe)
  - Poorest side lobe suppression (-13 dB)
  - Highest spectral leakage
  - Transition width: 4π/M

* **Hamming Window**
  - Modified cosine window [w(n) = 0.54 - 0.46cos(2πn/(M-1))]
  - Good side lobe suppression (-43 dB)
  - Moderate main lobe width
  - Transition width: 8π/M
  - Popular choice for general applications

* **Hanning Window**
  - Raised cosine window [w(n) = 0.5(1 - cos(2πn/(M-1)))]
  - Better side lobe roll-off than Hamming
  - Similar main lobe characteristics to Hamming
  - Side lobe suppression: -31 dB
  - Transition width: 8π/M

* **Bartlett Window (Triangular)**
  - Linear window function
  - Moderate performance characteristics
  - Side lobe suppression: -25 dB
  - Transition width: 8π/M
  - Good for time-domain applications

### Filter Types
The repository implements four fundamental filter types:

* **Lowpass Filter**
  - Passes frequencies below cutoff
  - h_d(n) = sin(ωc(n-α))/(π(n-α))

* **Highpass Filter**
  - Passes frequencies above cutoff
  - h_d(n) = [sin(π(n-α)) - sin(ωc(n-α))]/(π(n-α))

* **Bandpass Filter**
  - Passes frequencies between two cutoffs
  - h_d(n) = [sin(ωc2(n-α)) - sin(ωc1(n-α))]/(π(n-α))

* **Bandstop Filter**
  - Rejects frequencies between two cutoffs
  - h_d(n) = [sin(ωc1(n-α)) - sin(ωc2(n-α))]/(π(n-α))

Where:
- ωc, ωc1, ωc2 are cutoff frequencies
- α = (M-1)/2 is the group delay
- M is the filter order

## Implementation Guidelines

1. **Filter Order Selection**
   - Use odd-order filters for linear phase
   - Higher order = sharper cutoff but more computation

2. **Window Choice**
   - Rectangular: When sharp cutoff is crucial
   - Hamming: When side lobe suppression is priority
   - Hanning: When good roll-off rate needed
   - Bartlett: For moderate performance needs

3. **Performance Considerations**
   - Transition width ∝ 1/M (filter order)
   - Side lobe suppression depends on window type
   - Time-frequency resolution trade-off
