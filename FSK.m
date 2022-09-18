fs=200e3;
t=0:1/fs:0.005;
 
am=1;
fd=500;
mt=am*square(2*pi*fd*t,25)+am*square(2*pi*fd*t,50)+am*square(2*pi*fd*t,75)+am*square(2*pi*fd*t,100); % message signal
subplot(311);
plot(t,mt);
title('DIGITAL SIGNAL');
xlabel('Time');
ylabel('Amplitude');
 
ac=1;
fc=2e3;
ct=ac*cos(2*pi*fc*t); % carrier signal
subplot(312);
plot(t,ct);
title('CARRIER SIGNAL');
xlabel('Time');
ylabel('Amplitude');
 
kf=2*pi*500;
wi=(2*pi*fc*+kf*mt);
fsk=ac*cos(wi.*t); % FSK modulated signal
subplot(313);
plot(t,fsk);
title('MODULATED SIGNAL');
xlabel('Time');
ylabel('Amplitude');
