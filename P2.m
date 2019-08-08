% create signal points
n=0:100;
% given frequencies
f1 = 0.05;
f2= 0.5;
% sinusoidal functions
s1=cos(2*pi*f1*n);
s2=cos(2*pi*f2*n);
x=s1+s2;
% filter coefficients
num=[1 1 1]/3;
den=[1];
y=filter(num,den,x);

%plotting the signals
figure(1);
subplot(2,2,1);
plot(n,s1);
axis([0,100,-2,2]);
xlabel('Time index n');
ylabel('Amplitude');
title ('Signal #1');

subplot(2,2,2);
plot(n,s2);
axis([0,100,-2,2]);
xlabel('Time index n');
ylabel('Amplitude');
title ('Signal #2');

subplot(2,2,3);
plot(n,x);
axis([0,100,-2,2]);
xlabel('Time index n');
ylabel('Amplitude');
title ('Input Signal');

subplot(2,2,4);
plot(n,y);
axis([0,100,-2,2]);
xlabel('Time index n');
ylabel('Amplitude');
title ('Output Signal');

figure(2)
freqz(num,den)
figure(3)
freqz(n,y);