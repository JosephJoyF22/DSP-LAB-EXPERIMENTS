%Simulation of basic test signals
clc;
clear all;
close all;
%Unit impulse
t1=-5:1:5;
y1=[zeros(1,5),ones(1,1),zeros(1,5)];
subplot(3,3,1);
stem(t1,y1,"filled");
xlabel("time");
ylabel("Amplitude");
title("Unit impluse");
axis([-5 5 -2 2]);
%unit step
y2=[zeros(1,5),ones(1,6)];
subplot(3,3,2);
stem(t1,y2);
xlabel("time");
ylabel("Amplitude");
title("Unit step");
axis([-5 5 -2 2]);
%Unit ramp signal
t3=0:1:5;
y3=t3;
subplot(3,3,3);
plot(t3,y3);
hold on;
stem(t3,y3);
xlabel("time");
ylabel("Amplitude");
title("Ramp signal");
legend("Continuous","Discrete");
axis([-1 5 -1 5]);
%Sine signal
f4=3;
t4=0:0.02:1;
y4=sin(2*pi*f4*t4);
subplot(3,3,4);
plot(t4,y4);
hold on;
stem(t4,y4);
xlabel("time");
ylabel("Amplitude");
title("Sine wave");
legend("Continuous","Discrete");
axis([0 1 -2 2]);
%Cosine signal
t5=0:0.02:1;
y5=cos(2*pi*f4*t5);
subplot(3,3,5);
plot(t5,y5);
hold on;
stem(t5,y5);
xlabel("time");
ylabel("Amplitude");
title("Cosine wave");
legend("Continuous","Discrete");
axis([0 1 -2 2]);
%Unipolar pulse
f6=5;
t6=0:0.0001:1;
y6=0.5* (sign(sin(2*pi*f6*t6))+1);
subplot(3,3,6);
plot(t6,y6);
xlabel("time");
ylabel("Amplitude");
title("Unipolar Pulse");
axis([0 1 -2 2]);
%Bipolar pulse
f7=7;
y7=sign(sin(2*pi*f7*t6));
subplot(3,3,7);
plot(t6,y7);
xlabel("time");
ylabel("Amplitude");
title("Bipolar pulse");
axis([0 1 -2 2]);
%exponential signal
t8=0:0.1:5;
y8=exp(1*t8);
subplot(3,3,8);
plot(t8,y8);
hold on;
stem(t8,y8);
xlabel("time");
ylabel("Amplitude");
title("Exponential");
legend("Continuous","Discrete");
axis([0 5 -2 30]);
%Triangular wave
f9=10;
t9 = 0:0.025:1;
y9 = sin(2 *pi * f9 * t9);
subplot(3,3,9);
plot(t9, y9);
hold on;
stem(t9, y9);
xlabel("time");
ylabel("amp");
legend("Continuous","Discrete");
axis([0 1 -2 2]);