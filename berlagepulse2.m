clear,clc

% A = initial amplitude (a.u.)
% alpha = exponential decay factor (non-negative and real)
% n = time exponent (non-negative and real)
% f0 = dominant frequency (Hz)
% phi0 = initial phase angle (radians) [-pi/2,+pi/2]
% OUTPUT:
% w = the berlage wavelet of length(t)

%Berlage wavelet for 100 MHz
waktu=0:0.001:0.2; %waktu dalam second
f0=100;
jml_1=size(waktu);
jml_waktu=jml_1(:,2);
berlage_waktu_100=[];
A=2;
n=2;
    %w=A*heaviside(t).*(t.^n).*exp(-alpha*t).*cos(2*pi*f0*t + phi0)
    %A is amplitude, choose so the maximum near 1
    %phi nol is 0
    %alpha is 180 rad/sec
    fh=heaviside(waktu);
    hsq=waktu.^2;
    w_100=A*fh.*hsq.*exp(-180*(waktu)).*cos(2*pi*f0*waktu);

%w=A*heaviside(t).*(t.^n).*exp(-alpha*t).*cos(2*pi*f0*t + phi0)


figure(1)
plot(waktu, w_100)
title('100 MHz')
ylabel('Amplitude')
xlabel('Time (s)')

