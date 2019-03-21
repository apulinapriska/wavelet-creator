function pb = berlagepulse(f0,tinput,A,n,phi0)

% Berlage pulse generator
% Modified by Apulina Priska
% A = initial amplitude (a.u.)
% alpha = exponential decay factor (non-negative and real)
% n = time exponent (non-negative and real).
% Note that n should be bigger than 1. 
% f0 = dominant frequency (Hz)
% phi0 = initial phase angle (radians) [-pi/2,+pi/2]
% OUTPUT:
% w = the berlage wavelet of length(t)
% The parameters tn and decay are non-negative, real numbers; 
% tn is typically a small integer number 
% decay a multiple of the dominant signal period 1/fpeak

t=tinput.*(10^6); %convert time to
f_MHz=f0/(10^6); %convert input frequency to MHz
size_t=size(t);
amt_t=size_t(:,2);
%w=A*heaviside(t).*(t.^n).*exp(-alpha*t).*cos(2*pi*f0*t + phi0)
%A is amplitude, choose so the maximum near 1
    fh=heaviside(t);
    t2=t.^2;
    p=A*fh.*t2.*exp(-n*(f_MHz)*(t)).*cos((2*pi()*f_MHz*t)+phi0);
