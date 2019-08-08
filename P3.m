clear;clf;
% steps given
N=50;
n=0:N;
%creteing impulse signal
s= [1 zeros(1,N)];
%creating fucntion
num=[2.2333 2.5 2.3333];
den=[1 -0.2 0.8];
y=filter(num,den,s);

[H, T]=impz(num,den);

figure(1);
subplot(2,1,1);
stem(n,s);
axis([0,N,0,1]);
xlabel('Time index n');
ylabel('Amplitude');
title ('Impulse signal');

subplot(2,1,2);
stem(T,H);
xlim ([0 N])
xlabel('Time index n');
ylabel('Amplitude');
title ('Output Signal Sample Set');
