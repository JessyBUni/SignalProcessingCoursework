% variables provided
Vp= 2;
f = 0.5;
N=19;
%sample rate is 250 times less than the f
t = 0:f/250:4;
%set intial value
y = 0;
% loop through iterations
for n=1:1:N
    y1 =(Vp*sin(2*pi*((2*n)-1)*f.*t))./((2*n)-1);
    %sum the values to the ones previous calcualted
    y=y+(y1);
end
% add the scaling factor 
y=y*(4/pi);
%plot the signal
figure(1)
plot(t,y)
ylim([-Vp-0.5,Vp+0.5])
xlabel('time in seconds')
ylabel('amplitude')

