Theory:
Sine wave generation on TMS320C6748 involves digital synthesis using equation y(n) = A*sin(2πfn/fs). 
The DSP kit uses lookup tables for efficient computation and phase accumulator for frequency control.
Implementation leverages the kit's McASP interface and DAC for converting digital samples to analog output. 
The process requires proper sampling frequency (typically 48kHz), phase increment calculation, and memory management for lookup tables.

Procedure: 
1. Open Code Composer Studio, Click on File -  New – CCS Project 
Select the Target – C674X Floating point DSP , TMS320C6748 , and 
Connection – Texas Instruments XDS 100v2 USB Debug Probe and Verify. 
Give the project name and select Finish. 
2. Type the code program for generating the sine wave and choose 
File – Save As and then save the program with a name including ‘main.c’. 
Delete the already existing main.c program.
3. Select Debug and once finished, select the Run option. 
4. From the Tools Bar, select Graphs – Single Time. 
Select the DSP Data Type as 32-bit Floating point and time display unit as second(s). 
Change the Start address with the array name used in the program(here,s).
5. Click OK to apply the settings and Run the program or clock Resume in CCS.
