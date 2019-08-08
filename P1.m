% given in question
%cut off frequencies
w1= pi*0.2;
w2= pi*0.3;
%filter order
N=100;

%equation place holder
h = zeros(N+1,1);

%create the equation
for n=-N/2:1:N/2
    %shift to make everything positive for matirx
    pos = n+(N/2)+1;
    if (n ==0)
        h(pos)=(w2/pi)-(w1/pi);
    else
    h(pos)=((w2/pi)*sin(n*w2)/(n*w2))-((w1/pi)*sin(n*w1)/(n*w1));
    end
end

w=bartlett(N+1);
hn= h .*w;
figure(1);
subplot(2,1,1)

%display in graph
plot(h);
hold on
plot(hn);
hold off
title ("Orignial signal values and the resulting filtered wave")
legend("Original Signal","Filtered Signal")
xlim([0,101])
xlabel("Shifted relative frequency")
ylabel("Magnitude dB")

subplot(2,1,2);
plot(w);
title ("Bartlett Window")
xlim([0,101])
xlabel("Shifted relative frequency")
ylabel("Magnitude dB")

figure(2)
freqz(hn)

